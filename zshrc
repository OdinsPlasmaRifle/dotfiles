# Environment Variables
export VISUAL="vim"
export GOPATH=$HOME/go

# Path configuration
export PATH="$PATH:$GOPATH/bin:$HOME/.config/panel:/opt/anaconda/bin"

# Prompt configuration
PROMPT='%F{red}%n%f@%F{blue}%m%f %F{yellow}%3~%f %# '
RPROMPT='[%F{yellow}%?%f]'

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000
setopt autocd extendedglob
unsetopt beep notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/joshua/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
# End of lines added by compinstall
