# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# prompt
if [ -n "$SSH_CLIENT" ]; then
    PS1="\[\e[1;30m\][\t]\[\e[m\]\[\e[1;31m\][SSH]\[\e[m\]\[\e[0;32m\][\u@\h:\W]$\[\e[m\] "
else
    PS1="\[\e[1;30m\][\t]\[\e[m\]\[\e[0;32m\][\u@\h:\W]$\[\e[m\] "
fi

# exports
export EDITOR="vim"
export VISUAL="vim"

# sudo autocompletion
complete -cf sudo

# notify me of background jobs right away
set -o notify

# aliases
alias ls='ls --color=auto -h'
alias ll='ls -alh --color=auto'
alias perm='stat --format="%a %A"'
alias size='du -sh'

# http://bbs.archlinux.org/viewtopic.php?pid=686834#p686834
alias excuse='echo `telnet bofh.jeffballard.us 666 2>/dev/null` |grep --color -o "Your excuse is:.*$"'
