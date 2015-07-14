# Path to your oh-my-zsh installation.
export ZSH=/home/frank-antergos/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# agnoster2- a modification of agnoster using cyan instead of yellow
ZSH_THEME="agnoster2"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy.mm.dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Bluetooth addresses for phone and tablet
bttablet=AC:22:0B:41:1A:07
btphone=2C:54:CF:87:64:07

export PEBBLE_PHONE=192.168.1.85

# Alias
alias ls='ls --color=auto'
alias clock='tty-clock -c -C 1 -f "%Y-%m-%d"'
alias cls=clear
alias archey=archey3
alias ko='killall Origin.exe'
alias gettemp='sensors coretemp-isa-0000'
alias startx='startx && exit' 
alias Syua='yaourt -Syua --noconfirm'
alias players='php ~/Programming/PHP-Minecraft-Query\ Clean/run.php'
alias hdmiOn='xrandr --output HDMI1 --mode 1920x1080 --right-of LVDS1'
alias hdmiOff='xrandr --output HDMI1 --off'
alias mountphone='sudo mount -t cifs //LG_VOLT/LG_Volt /home/frank-antergos/mnt -o user=mystorage,password=9461,workgroup=NFS,ip=192.168.1.85'
alias doKill='killall bash zsh bspwmrc compton /bin/sh lemonbar; source .config/bspwm/bspwmrc&'
alias connectps3='sudo xboxdrv --detach-kernel-driver --led 2 --silent'

export EDITOR=vim

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/android-sdk/platform-tools:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
export PATH=~/pebble-dev/PebbleSDK-3.0/bin:$PATH
