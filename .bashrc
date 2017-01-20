export TERM="xterm-color"
export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# for white background 
# export PS1="\[\033[38;5;0m\]\u\[$(tput sgr0)\]\[\033[38;5;2m\]@\h:\[$(tput sgr0)\]\[\033[38;5;1m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

export EDITOR='vim'
export CLICOLOR=1
export LSCOLORS=gxxxexxxcxxxxxxxxxgxgx
alias ls='ls -GFh'
