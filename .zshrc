export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic-custom"
ZSH_DISABLE_COMPFIX=true

plugins=(
    git
    ugit
    # forgit
    fossil
    vi-mode
    command-not-found
    colored-man-pages
    fd
    asdf
    pip
    docker
    shrink-path
    zsh-autosuggestions
    fast-syntax-highlighting
    # fzf
    fzf-tab
    # ruby
    # poetry
    # pyenv
    # mix-fast
)

source $ZSH/oh-my-zsh.sh

###############################################################################
### User Configuration:
#
source $HOME/.aliases.zsh

# Bindings:
bindkey '^ ' autosuggest-accept

source $HOME/.asdf/asdf.sh
source <(cod init $$ zsh)

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc



# unalias run-help
autoload run-help

[[ -s "$HOME/.grc/grc.zsh" ]] && source $HOME/.grc/grc.zsh

# Motivation reminder
# echo "2020 12 31" | awk '{dt=mktime($0 " 00 00 00")-systime(); print "There are " int(dt/86400/7) " weeks left until the year ends. What will you do?";}'


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/bitcomplete bit


# Haskell ghcup
# update stack via ghcup tui and not via `stack update`
# source $HOME/.ghcup/env
# [ -f "/home/baka/.ghcup/env" ] && source "/home/baka/.ghcup/env" # ghcup-env

# ENV TOKENS
export TWAUTH="oauth:******************************"
export TWUSER="************"
export TG_TOKEN="**********:*****************-*****************"


# Eerie config
# export EERIEDIR=/home/baka/.eerie
# export PATH=$PATH:$EERIEDIR/base/bin:$EERIEDIR/activeEnv/bin
# End Eerie config


export PATH="$HOME/apps/elixir-ls/release:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.r2env/bin:$PATH"

# Flatpak
export PATH="/var/lib/flatpak/exports/share:$PATH"
export PATH="$HOME/.local/share/flatpak/exports/share:$PATH"

# Cuda
export PATH="/usr/local/cuda-11.7/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-11.7/lib64:$LD_LIBRARY_PATH"
export CUDA_HOME="/usr/local/cuda-11.7"

# For Python
export PYTHONSTARTUP="${HOME}/.pyrc"
export PYTHONIOENCODING="UTF-8"

# Virtualenv
export VIRTUAL_ENV_DISABLE_PROMPT=1

# For OpenCV
export PYTHONPATH="/usr/local/lib/python3.10/site-packages:$PYTHONPATH"

# export R2PM_DBDIR="$HOME/apps/radare2/radare2-pm/db"
export R2PM_PLUGDIR=$HOME/.radare2/plugins
export R2PM_DBDIR=$HOME/.radare2/r2pm/db
export R2PM_GITDIR=$HOME/.radare2/r2pm/git

# RETDEC
export RID=$HOME/apps/retdec/bin

#################################################################
# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Preview file content using bat (https://github.com/sharkdp/bat)
export FZF_CTRL_T_OPTS=" --preview 'bat -n --color=always {}' --bind 'ctrl-/:change-preview-window(down|hidden|)' --height 100%"
# Print tree structure in the preview window
export FZF_ALT_C_OPTS="--preview 'tree -C {}' --height 100%"
export FZF_BASE=/usr/bin/fzf

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
    fd --type d --hidden --follow --exclude ".git" . "$1"
}



export IRUBY_SESSION_ADAPTER="cztop"

export LS_COLORS="rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:";
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"

export EDITOR=nvim
export BROWSER=brave-browser
export PAGER="bat -p"
export TERM="xterm-256color"
export TIMEFMT=$'\n[job name] %J\n\n\t[0] real:    %E :: %mE :: %uE\n\t[1] user:    %U\n\t[2]  sys:    %S\n\t[3]  cpu:    %P'


setopt hist_ignore_all_dups
setopt hist_ignore_space

# export MANPAGER="nvim -c set ft=man -"

# Colors for man pages
if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0 282828" #black
    echo -en "\e]P8 928374" #darkgrey
    echo -en "\e]P1 CC241D" #darkred
    echo -en "\e]P9 FB4934" #red
    echo -en "\e]P2 98971A" #darkgreen
    echo -en "\e]PA B8BB26" #green
    echo -en "\e]P3 D79921" #brown
    echo -en "\e]PB FABD2F" #yellow
    echo -en "\e]P4 458588" #darkblue
    echo -en "\e]PC 83A598" #blue
    echo -en "\e]P5 B16286" #darkmagenta
    echo -en "\e]PD D3869B" #magenta
    echo -en "\e]P6 689D6A" #darkcyan
    echo -en "\e]PE 8EC07C" #cyan
    echo -en "\e]P7 A89984" #lightgrey
    echo -en "\e]PF EBDBB2" #white
    clear #for background artifacting
fi


# support colors in less
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'


export NNN_PLUG='f:finder;o:fzopen;p:mocq;d:diffs;t:nmount;v:imgview;p:preview-tui;t:preview-tabbed'
export GPG_TTY=$(tty)


source /home/baka/.config/broot/launcher/bash/br
