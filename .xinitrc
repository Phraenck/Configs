#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#start ibus daemon
export LC_CTYPE="en_US.UTF-8"
export XMODIFIERS=@im=ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
ibus-daemon&

xmodmap -e 'add mod3 = Scroll_Lock'

# set default cursor
xsetroot -cursor_name left_ptr

# select window manager to start
case $WM in
gnome)
    exec gnome-session
    ;;
kde)
    exec startkde
    ;;
*)
    if [ -e ~/Programming/Scripts/exportColors.sh ] ; then
        source ~/Programming/Scripts/exportColors.sh
    fi

    sxhkd &
    exec bspwm
    ;;
esac
