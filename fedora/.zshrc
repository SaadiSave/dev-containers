# Completions
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename "$HOME/.zshrc"

fpath+="$HOME/.zsh/completions"

autoload -Uz compinit
compinit

# setup history
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=15000
bindkey -e
