. $HOME/.asdf/asdf.sh
# export PATH="$HOME/.asdf/installs/golang/1.14.3/packages/bin:$PATH"
export PATH="$HOME/.asdf/installs/rust/1.48.0/bin:$PATH"
export PATH="$HOME/.asdf/installs/python/3.9.0/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.r2env/bin:$PATH"

. $HOME/.asdf/asdf.sh

export BW_SESSION="y9tHKlcsS7uhPoaE2Ojt4uM4/8ays60YSj+Dk2dFBXWtQtDOOUDbwqb3SLJaaqwuFYFyKuaF9bovVvN5rYWIow=="

# For python
export PYTHONSTARTUP="${HOME}/.pyrc"
export PYTHONIOENCODING="UTF-8"

# export R2PM_DBDIR="$HOME/apps/radare2/radare2-pm/db"
export R2PM_PLUGDIR=/home/unx/.radare2/plugins
export R2PM_DBDIR=/home/unx/.radare2/r2pm/db
export R2PM_GITDIR=/home/unx/.radare2/r2pm/git

# RETDEC
export RID=/home/unx/apps/retdec/bin



export FZF_BASE=/usr/bin/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export IRUBY_SESSION_ADAPTER="cztop"

export LS_COLORS="rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:";
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"

export ZSH="/home/unx/.oh-my-zsh"
export EDITOR=nvim
export BROWSER=google-chrome-stable
export PAGER="bat"
# export TERM=screen-256color
# export TERM="xterm-256color"
export TERM="rxvt-256color"

# export TW_OAUTH=7e9nmvl11d0uv7m91ip7gxjxr8j2j8

# Just give us more space for history
# export HISTFILE="$HOME/.zsh_history"
# export HISTSIZE=99999999
# export SAVEHIST=$HISTSIZE

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
#  dirhistory # alt + up, down, right, left
  fzf
#  globalias
  zsh-autosuggestions
  colored-man-pages
#  colorize
  fd
  asdf
  ruby
  bundler
  fzf-tab
  pip
)

source <(cod init $$ zsh)
source $ZSH/oh-my-zsh.sh
source $HOME/.aliases.zsh


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


# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

# Bindings:
bindkey '^ ' autosuggest-accept

# unalias run-help
autoload run-help

[[ -s "/home/unx/.grc/grc.zsh" ]] && source /home/unx/.grc/grc.zsh

# Motivation reminder
# echo "2020 12 31" | awk '{dt=mktime($0 " 00 00 00")-systime(); print "There are " int(dt/86400/7) " weeks left until the year ends. What will you do?";}'


# vi-mode keymaps:

# allow ^H ^L for navigate history
# bindkey '^H' up-history
# bindkey '^L' down-history

# bindkey '^h' beginning-of-line
# bindkey '^n' end-of-line


# support colors in less
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/bitcomplete bit

PATH="/home/unx/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/unx/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/unx/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/unx/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/unx/perl5"; export PERL_MM_OPT;
