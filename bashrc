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

# prompt colors
pink=$(tput setaf 175)
green=$(tput setaf 71)
white=$(tput setaf 255)
blue=$(tput setaf 45)
lcyan=$(tput setaf 153)
reset=$(tput sgr0)

#PS1="\[$white\][\w] \[$blue\]\$(parse_git_branch)\[$pink\]:: \[$reset\]"; light theme
PS1="\[$white\][\w] \[$lcyan\]\$(parse_git_branch)\[$green\]:: \[$reset\]";

export PS1;

# aliases
alias "fetch"="neofetch --w3m --source ~/Pictures/sucrose.jpg --crop-mode fill"
alias "la"="ls -a"

#alias "ls"="lsd"
#alias "lt"="ls --tree"

# Set vim as default editor instead of nano/vi
export VISUAL=vim
export EDITOR=vim
