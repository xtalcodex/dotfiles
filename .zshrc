HISTSIZE=100000
SAVEHIST=100000

alias cp='cp -i'
alias d='docker'
alias e='emacsclient -nw'
alias gcc='gcc-11'
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
