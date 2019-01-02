# Environment Variables
export VISUAL="vim"
export GOPATH=$HOME/go
export CONDAPATH=/opt/anaconda

# Get extra env vars
source .projects

# Path configuration
export PATH="$PATH:$HOME/.config/panel:$GOPATH/bin:$CONDAPATH/bin:/usr/bin/protoc/"

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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.zsh.inc' ]; then source '/opt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.zsh.inc' ]; then source '/opt/google-cloud-sdk/completion.zsh.inc'; fi

