# Only run for interactive shells
case $- in
  *i*) ;;
  *) return ;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=20000

PS1='\[\033[01;36m\]\w\[\033[00m\] \$ '

# Shared aliases
[ -f "$HOME/.aliases" ] && source "$HOME/.aliases"
