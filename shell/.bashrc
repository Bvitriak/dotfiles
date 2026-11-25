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

# Cross-platform default editor
if command -v code >/dev/null 2>&1; then
  export EDITOR="code --wait"
  export VISUAL="code --wait"
elif command -v vim >/dev/null 2>&1; then
  export EDITOR="vim"
  export VISUAL="vim"
else
  export EDITOR="nano"
  export VISUAL="nano"
fi

# Shared aliases
[ -f "$HOME/.aliases" ] && source "$HOME/.aliases"
