#
# ~/.bashrc
#
#if test -t 1; then
#  exec zsh
#fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
