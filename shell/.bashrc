# ~/.bashrc
#
#set -o vi
export EDITOR='vim'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
if [ -d "$HOME/.bin" ] ; then
  PATH="$PATH:$HOME/.bin"
fi


#Aliases
alias b="cd .. && ls -a"
n() { cd "$1" && ls -la; }
alias t="tmux"
#alias sshsocks="ssh -D 1080 -f -C -q -N -p 22"
