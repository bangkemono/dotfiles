# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =$HOME "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# enable git support
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Prompt 
purple=$(tput setaf 135)
gray=$(tput setaf 242)
dmagenta=$(tput setaf 97)
red=$(tput setaf 88)
pink=$(tput setaf 175)
green=$(tput setaf 71)
white=$(tput setaf 255)
blue=$(tput setaf 45)
lcyan=$(tput setaf 153)
reset=$(tput sgr0)
#PS1="\[$green\][\w] \[$blue\]\$(parse_git_branch)\[$pink\]:: \[$reset\]"; #light theme
#PS1="\[$purple\][\w] \[$dmagenta\]\$(parse_git_branch)\[$ren\]:: \[$reset\]"; #dark theme
PS1="\[$white\][\w] \[$lcyan\]\$(parse_git_branch)\[$green\]:: \[$reset\]"; #iceage
export PS1;

# My aliases
alias "fetch"="neofetch --w3m --source $HOME/Pictures/sucrose.jpg"

alias "la"="ls -a"

# use if you use lsd 
#alias "ls"="lsd" 
#alias "lt"="ls --tree"

alias "rmaim"="maim $HOME/Pictures/screenshots/$(date +%s).png"
alias "screc"="ffmpeg -f x11grab -s 1366x768 -i :0.0 -f alsa -i default $HOME/Videos/recordings/$(date +%m-%d-%Y_%R:%S).mkv"
alias "screc1"="ffmpeg -f x11grab -s 1366x768 -i :0.0+1024,0 -f alsa -i default $HOME/Videos/recordings/$(date +%m-%d-%Y_%R:%S).mkv"
alias "screc2"="ffmpeg -f x11grab -s 1024x768 -i :0.0 -f alsa -i default $HOME/Videos/recordings/$(date +%m-%d-%Y_%R:%S).mkv"

# Set vim as default editor instead of nano
export VISUAL=vim
export EDITOR=vim
