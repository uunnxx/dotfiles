alias to=cd
alias nrc="nvim ~/.config/nvim/init.vim"
alias zrc="nvim ~/.zshrc"
alias tt=fg

alias __="sudo \$(fc -ln -1)"
alias _=sudo

alias di="sudo dpkg -i"
alias ag="sudo apt"
alias agi="sudo apt install"
alias aga="sudo apt autoclean"
alias agar="sudo apt autoremove"
alias agc="sudo apt clean"
alias agli="apt list --installed"
alias agp="sudo apt purge"
alias agr="sudo apt remove"
alias agu="sudo apt update"
alias agug="sudo apt upgrade"
alias aguu="sudo apt update && sudo apt upgrade"

# ls
alias ls='ls --color=yes'
alias la='ls -lAh --color=yes'
alias ll='ls -lh --color=yes'

# use take() when you need after creating switch to
alias md="mkdir -pv"

alias info='info --vi-keys'
alias grep="grep -i --color=auto"
alias fd=fdfind

alias df="df -h"
alias du="du -c -h"
alias duu="du --max-depth=1"

alias da="date '+%A, %B %d, %Y [%T]'"
alias hist="history | grep"

alias :q="exit"

# alias ed=nvim
alias vim=nvim
alias ivm=nvim
alias vmi=nvim
alias v=nvim

alias do_path='export PATH="${PWD}:${PATH}"'
alias get_path='echo $PATH | tr -s ":" "\n"'

alias rzsh="source ~/.zshrc"
alias ezsh="nvim ~/.zshrc"
alias ealias="nvim ~/.aliases.zsh"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias evim="nvim ~/.config/nvim/init.vim"

alias note="jupyter notebook"

alias tran="trans -l ru"
alias fuck='TF_CMD=$(TF_ALIAS=fuck PYTHONIOENCODING=utf-8 TF_SHELL_ALIASES=$(alias) thefuck $(fc -ln -1 | tail -n 1)) && eval $TF_CMD && print -s $TF_CMD'

alias copy="xclip -selection clipboard"
# Exapmple of use: ls | copy

alias openn='xdg-open &>/dev/null'

alias merge="xrdb -merge /home/unx/.Xresources"
alias batv="fzf --preview 'bat --color \"always\" {}'"
alias ncdu="ncdu --color=dark"
alias rnn="xrandr --output HDMI-A-0 --brightness"
alias lnn="xrandr --output DVI-D-0 --brightness"
alias yl=youtube-dl
alias js=js68

alias mm=vifm

alias ml=multipass

alias j="jobs -l"



# alias ipaddr="grc ip addr"
# alias iplink="grc ip link"
# alias iproute="grc ip route"
# alias ipneighbor="grc ip neighbor"
# alias ip="grc ip"
#
# alias dokps"docker ps"
# alias dokimg"docker images"
# alias doksearch"docker search"
# alias dokls"docker ls"
# alias doknls"docker network ls"
# alias dokinfo"docker info"

alias gentags="ripper-tags -R --exclude=.git"

alias bonsai="cbonsai -ilL60"
