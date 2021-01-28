if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Vi editing mode
set -o vi

# Aliases and stuff
source $HOME/.bash_aliases

# used in PS1 to show off git branch information
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# PS1 format
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\w\[$(tput setaf 1)\]]\$(parse_git_branch)\[$(tput setaf 7)\] \\$ \[$(tput sgr0)\]"

source $HOME/code/japh/japh
