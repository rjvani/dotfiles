# File: alias.sh
# Author: Rohan Jadvani
#
# Brief: Useful aliases for the shell.

# Vundle plugin installation.
alias vup="vim +PluginInstall +qall"

# I hate typing
alias cdd="cd .."
alias cddd="cd ../.."
alias cdddd="cd ../../.."
alias cddddd="cd ../../../.."

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
GIT_LOG_FORMAT="--pretty=\"%C(bold green)%h%Creset %C(yellow)%an%Creset%C(auto)%d%Creset %s\""
alias gl="git log --graph $GIT_LOG_FORMAT"
alias gll="gl --all"

