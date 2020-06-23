# Exports
export ZSH="/home/sskye/.oh-my-zsh"
export CFLAGS="-O2 -pipe -march=native"
export CXXFLAGS="${CFLAGS}"
export MAKEFLAGS="-j4"
export LANG="en_US.UTF-8"
export EDITOR="vim"

# History stuff
HISTFILE=~/.histfile
HISTZISE=1000
SAVEHIST=1000

ZSH_THEME="typewritten"

setopt autocd extendedglob nomatch notify
unsetopt beep

bindkey -v

plugins=(git)

source $ZSH/oh-my-zsh.sh

zstyle :compinstall filename '/home/sskye/.zshrc'
autoload -Uz compinit
compinit

alias xinitrc="vim /home/sskye/.xinitrc"
alias vimrc="vim /home/sskye/.vimrc"
alias zshrc="vim /home/sskye/.zshrc"
alias ls="exa -a"
alias l="exa -la"
alias DARKNET="sudo wpa_supplicant -B -i wlo1 -c /etc/wpa_supplicant/wpa_supplicant.conf && sudo dhcpcd wlo1"
alias c="clear"
alias suckless="cd /home/sskye/builds/suckless/"

