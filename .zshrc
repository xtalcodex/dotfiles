HISTSIZE=10000
SAVEHIST=10000

alias cp='cp -i'
alias d='docker'
alias e='emacsclient -nw'
alias gcc-11='gcc-11 -std=gnu11 -O2 -lm'
alias h='history -i 1'
alias k='kubectl'
alias ke='emacsclient -e "(kill-emacs)"'
alias ll='ls -alFG'
alias ls='ls -FG'
alias mv='mv -i'

eval "$(rbenv init -)"

setopt extended_history
setopt hist_ignore_dups
setopt no_beep
setopt share_history
