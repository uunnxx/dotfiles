. $HOME/.asdf/asdf.sh
export PATH="$HOME/.asdf/installs/rust/1.54.0/bin:$PATH"
export PATH="$HOME/.asdf/installs/rust/1.55.0/bin:$PATH"
export PATH="$HOME/apps/elixir-ls/release:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.r2env/bin:$PATH"

# For python
export PYTHONSTARTUP="${HOME}/.pyrc"
export PYTHONIOENCODING="UTF-8"

# export R2PM_DBDIR="$HOME/apps/radare2/radare2-pm/db"
export R2PM_PLUGDIR=$HOME/.radare2/plugins
export R2PM_DBDIR=$HOME/.radare2/r2pm/db
export R2PM_GITDIR=$HOME/.radare2/r2pm/git

# RETDEC
export RID=$HOME/apps/retdec/bin

export FZF_BASE=/usr/bin/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export IRUBY_SESSION_ADAPTER="cztop"

export LS_COLORS="rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:";
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"

export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
export BROWSER=google-chrome-stable
export PAGER="bat -p"
export TERM="xterm-256color"

setopt hist_ignore_all_dups
setopt hist_ignore_space

# export MANPAGER="nvim -c set ft=man -"


# ZSH_THEME="afowler_custom"
ZSH_THEME="afowler"
ZSH_DISABLE_COMPFIX=true

plugins=(
    git
    zsh-syntax-highlighting
    vi-mode
    command-not-found
    fzf
    fzf-tab
    zsh-autosuggestions
    colored-man-pages
    fd
    asdf
    ruby
    bundler
    pip
    fossil
    mix-fast
    docker
)

source <(cod init $$ zsh)
source $ZSH/oh-my-zsh.sh
source $HOME/.aliases.zsh




# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
    fd --type d --hidden --follow --exclude ".git" . "$1"
}

# Bindings:
bindkey '^ ' autosuggest-accept

# unalias run-help
autoload run-help

[[ -s "$HOME/.grc/grc.zsh" ]] && source $HOME/.grc/grc.zsh

# Motivation reminder
# echo "2020 12 31" | awk '{dt=mktime($0 " 00 00 00")-systime(); print "There are " int(dt/86400/7) " weeks left until the year ends. What will you do?";}'


# vi-mode keymaps:

# allow ^H ^L for navigate history
# bindkey '^H' up-history
# bindkey '^L' down-history

# bindkey '^h' beginning-of-line
# bindkey '^n' end-of-line


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/bitcomplete bit

PATH="$HOME/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;


# Haskell ghcup
# update stack via ghcup tui and not via `stack update`
# source $HOME/.ghcup/env
[ -f "/home/baka/.ghcup/env" ] && source "/home/baka/.ghcup/env" # ghcup-env

export TWAUTH="oauth:00000000000000000000000000000e"
export TWUSER="b0000000000r"
export TG_TOKEN="1000000004:A000000000000000000000000000000000M"

# Eerie config
export EERIEDIR=/home/baka/.eerie
export PATH=$PATH:$EERIEDIR/base/bin:$EERIEDIR/activeEnv/bin
# End Eerie config

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc


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
