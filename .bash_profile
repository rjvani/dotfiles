
# File:   .bash_profile
# Author: Rohan Jadvani

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=/usr/local/apache-ant/bin:"$PATH"
export PATH=/usr/local/smlnj-110.78/bin:"$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
alias sml="rlwrap /usr/local/smlnj/bin/sml"
alias python="/usr/local/bin/python3.4"

# Productivity aliases
PS1="youAreHere/ "
export PS1
alias --='-'
alias ash='echo youAreHere/ '
alias bash='echo youAreHere/ '
alias cat='perl -l'
alias cd='cd .'
alias cp='echo cp'
alias csh='echo youAreHere/ '
alias df='echo /dev/dump 100% 100% 0% /tmp/jailfs/hoosegow/you'
alias echo='echo '
alias emacs='ed'
alias env='vmstat'
alias ex='ed'
alias exec='echo cannot fork'
alias exit='echo are you sure?'
alias id='echo user\(me\) group\(sadly the same\)'
alias joe='ed'
alias jsh='echo youAreHere/ '
alias kill='echo all dead'
alias ksh='echo youAreHere/ '
alias less='more ---x'
alias logout='echo are you sure?'
alias ls='echo .'
alias mkdir='echo making directory'
alias more='less </dev/null'
alias mv='echo stay'
alias netstat='cat /dev/random'
alias ping='ping /dev/null'
alias prompt='echo youAreHere/'
alias ps='echo you 501 501 0 Apr 1 ? 0:00 /usr/bin/vicks -vaporub'
alias pwd='echo you are here'
alias rm="echo can't find"
alias rmdir='removing directory'
alias set='iostat'
alias sh='echo youAreHere/ '
alias su='echo cannot su to'
alias sudo='exec'
alias touch="echo please don't touch"
alias unalias='echo no aliases found named'
alias vi='ed'
alias vim='ed'
alias w='echo x, y and z'
alias who='echo what?'
alias zsh='echo youAreHere/ '
alias alias="sleep 5"

# Helper prompt command
export PROMPT_COMMAND="cd"
