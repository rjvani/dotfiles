# File: .zshrc
# Author: Rohan Jadvani
#
# Inspiration from jez.

# Basic zsh config settings
ZSH_HIGHLIGHT_HIGHLIGHTERS+=(main brackets)
DISABLE_AUTO_UPDATE="true"

export CASE_SENSITIVE="true"
ZSH_THEME=avit
ZLE_REMOVE_SUFFIX_CHARS=$' \t\n;&'

export ZSH="$HOME/.oh-my-zsh/"
plugins=(brew brew-cask zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
ZSH_HIGHLIGHT_STYLES[comment]='fg=green,bold'

setopt autocd
setopt completealiases
setopt nomatch
setopt no_case_glob
setopt interactive_comments
setopt menu_complete
export MENU_COMPLETE=1

# Keybindings because vim master race
bindkey "^H" backward-delete-char
bindkey -v
bindkey "^?" backward-delete-char
bindkey "^W" backward-kill-word
bindkey "^U" backward-kill-line

# Reverse search with bindkey
vi-search-fix() {
  zle vi-cmd-mode
  zle .vi-history-search-backward
}

autoload vi-search-fix
zle -N vi-search-fix
bindkey -M viins '\e/' vi-search-fix

# History search with vi j/k
bindkey -M vicmd 'k' history-beginning-search-backward
bindkey -M vicmd 'j' history-beginning-search-forward

# Setup zsh history files
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

zstyle :compinstall filename $HOME/.zshrc

# Fix some annoying zsh completions
zstyle ':completion:*:*:*:*:*' menu ''
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={a-zA-Z}'
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
zstyle ':completion:*' verbose false

# Turn on useful completions
autoload -Uz compinit && compinit
autoload -Uz promptinit && promptinit
autoload -Uz zmv

# GNU coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Tab completion for prompts
if [ -e $(which brew &> /dev/null && brew --prefix)/etc/zsh_completion ]; then
  source $(brew --prefix)/etc/zsh_completion
fi

# Help for zsh built-ins
unalias run-help 2> /dev/null
autoload run-help

# Properly configure help commands
HELPDIR=/usr/local/share/zsh/help
alias help="run-help"

# Useful aliases because I hate typing
alias cdd="cd .."
alias cddd="cd ../.."
alias cdddd="cd ../../.."

# Git aliases
alias gb="git branch"
alias gco="git checkout"
alias gd="git diff"

alias ga="git add"

alias gc="git commit -v"
alias gca="gc -a"
alias gcm="git commit -m"
alias gcam="git commit -am"

alias gs="git status"
alias gd="git diff"
alias gdw="git diff --color-words"
alias gds="git icdiff"

alias gf="git fetch"
alias gfp="git fetch --prune"
alias gpf="git pull --ff-only"

alias gp="git push"

# Format git log to look pretty
GIT_PRETTY_FORMAT="--pretty=\"%C(bold green)%h%Creset%C(auto)%d%Creset %s\""
alias gl="git log --graph $GIT_PRETTY_FORMAT"

