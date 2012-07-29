
[ -z "$PS1" ] && return

if [ -f $HOME/.bash_aliases ]; then
	 . $HOME/.bash_aliases
fi

if [ -f /etc/bash_completion ]; then
	 . /etc/bash_completion
fi
# Promt black
export TERM=xterm-256color
export EDITOR="vim"

PROJECTS="Projects"

alias ls='ls --color'
export PATH="$PATH:$HOME/bin"
export PS1="\[\033[1;37m\]-(\[\033[1;31m\]\w\[\033[1;37m\])-\n(\[\033[1;32m\]\u\[\033[1;31m\]@\[\033[1;36m\]\h\[\033[1;37m\])-$ "
