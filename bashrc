# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# enable git support
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Prompt 
lgreen=$(tput setaf 120)
pgreen=$(tput setaf 120)
green=$(tput setaf 71)
white=$(tput setaf 255)
lcyan=$(tput setaf 153)

lpurple=$(tput setaf 170)
purple=$(tput setaf 91)
lpink=$(tput setaf 211)
pink=$(tput setaf 204)

reset=$(tput sgr0)
#PS1="\[$white\]\u@\h \[$green\]:: \[$pgreen\][\w] \[$lcyan\]\$(parse_git_branch)\[$lgreen\]\n>> \[$reset\]"; # sucrose
PS1="\[$white\]\u@\h \[$lpink\]:: \[$lpurple\][\w] \[$purple\]\$(parse_git_branch)\[$pink\]\n>> \[$reset\]"; # sucrose
export PS1;

# My aliases
alias "fetch"="neofetch --w3m --source ~/Pictures/laplus.jpg --crop-mode fill"

alias "ls"="lsd"
alias "la"="ls -a"
alias "lt"="ls --tree"

alias "rmaim"="maim /home/stritesb76/Pictures/screenshots/$(date +%s).png"
alias "screc"="ffmpeg -f x11grab -s 1366x768 -i :0.0 -f pulse -ac 2 -i default ~/Videos/recordings/$(date +%m-%d-%Y_%R:%S).mkv"
alias "screc1"="ffmpeg -f x11grab -s 1366x768 -i :0.0+1024,0 -f pulse -i default -ac 2 ~/Videos/recordings/$(date +%m-%d-%Y_%R:%S).mkv"
alias "screc2"="ffmpeg -f x11grab -s 1024x768 -i :0.0 -f pulse -i default -ac 2 ~/Videos/recordings/$(date +%m-%d-%Y_%R:%S).mkv"

alias "lset"="python /home/stritesb76/.lset.py"

# Set vim as default editor instead of nano
export VISUAL=vi
export EDITOR=vi
export gmr='git clone https://github.com/bangkemono/'
