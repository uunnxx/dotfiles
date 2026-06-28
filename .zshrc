# Performance; also uncomment last line
# zmodload zsh/zprof


export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache/


# glob qualifier (#qNmh-24) reads as "exists and was modified within the last 24 hours".
autoload -Uz compinit
if [[ -n ~/.zcompdump(#qNmh-24) ]]; then
    compinit -C
else
    compinit
fi


if [[ ":$FPATH:" != *":/home/baka/.zsh/completions:"* ]]; then export FPATH="/home/baka/.zsh/completions:$FPATH"; fi
# Load before `source $ZSH/oh-my-zsh.sh`
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src



export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="af-magic-custom"

plugins=(
    ugit # https://github.com/Bhupesh-V/ugit
    gitignore  # gi
    git-flow-avh
    gh
    jj
    vi-mode
    command-not-found
    # colored-man-pages
    mise
    docker
    shrink-path
    zsh-autosuggestions
    fast-syntax-highlighting
    fzf-tab
)

source $ZSH/oh-my-zsh.sh

if [[ -f ~/.aliases.zsh ]]; then
    source $HOME/.aliases.zsh # aliases
fi

if [[ -f ~/.env.zsh ]]; then
    source $HOME/.env.zsh # secret keys
fi

fpath+=~/.zfunc

# Bindings:
bindkey '^ ' autosuggest-accept
# bindkey -s '^n' 'nvim $(fzf)^M'
bindkey -s '^n' "fzf --bind 'enter:become(nvim {})'^M"

# bind the sequence to 'self-insert' (type a space) or 'noop'
# I've set on alacritty.toml
#   [[keyboard.bindings]]
#   chars = "\u001B[32;2u"
#   key = "Space"
#   mods = "Shift"
# so in Neovim I can use Shift+Space combination and it works fine on neovim
# but terminal emulator sees these sequences and just clears what I already typed
# so while typing long command I just press space while holding shift line just gets cleared
# and thats annoying
# this line below will fix this issue
bindkey "\e[32;2u" self-insert


[[ -s "$HOME/.grc/grc.zsh" ]] && source $HOME/.grc/grc.zsh


# Paths
export PATH="$HOME/.local/bin:$PATH"
# Mise related
eval "$(/home/baka/.local/bin/mise activate zsh)"
export PATH="$HOME/.local/share/mise/shims:$PATH"

# llama.cpp
export PATH=$PATH:$HOME/apps/llama/llama.cpp/build/bin

export PATH="/home/baka/.cache/.bun/bin:$PATH"

# Vlang
export PATH="$HOME/.config/v-analyzer/bin/:$PATH"
# Elixir
export PATH="$HOME/apps/elixir-ls/release:$PATH"

# Nim-lang
export PATH="$HOME/.nimble/bin:$PATH"

export PATH="$HOME/.r2env/bin:$PATH"

# Flatpak
export PATH="/var/lib/flatpak/exports/share:$PATH"
export PATH="$HOME/.local/share/flatpak/exports/share:$PATH"


export PATH="$HOME/.local/kitty.app/bin:$PATH"

# Cuda
export PATH="/usr/local/cuda-12.4/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-12.4/lib64:$LD_LIBRARY_PATH"
export LIBRARY_PATH="/usr/local/cuda-12.4/lib64:$LIBRARY_PATH"
export CUDA_HOME="/usr/local/cuda-12.4"

# -----------------------------------------------------------------------------
# PYTHON
# export PYTHONPATH="./venv/bin/python"
# For OpenCV
# export PYTHONPATH="$PYTHONPATH:/usr/local/lib/python3.10/site-packages"
# export PYTHONSTARTUP="${HOME}/.pyrc"
# export PYTHONIOENCODING="UTF-8"

# Virtualenv
export VIRTUAL_ENV_DISABLE_PROMPT=1

# -----------------------------------------------------------------------------

export GTK_THEME='Yaru-dark'

# export R2PM_DBDIR="$HOME/apps/radare2/radare2-pm/db"
export R2PM_PLUGDIR=$HOME/.radare2/plugins
export R2PM_DBDIR=$HOME/.radare2/r2pm/db
export R2PM_GITDIR=$HOME/.radare2/r2pm/git

# RETDEC
export RID=$HOME/apps/retdec/bin

################################################################################
# FZF
#
# export FZF_BASE=$HOME/.fzf/bin/fzf
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Change selection to space instead of tab / shift-tab
# export FZF_DEFAULT_OPTS="
#     --walker-skip .git,node_modules,target,.venv
#     --bind 'tab:down,shift-tab:up,space:toggle'
# "
export FZF_DEFAULT_OPTS="
    --walker-skip .git,node_modules,target,.venv
    --bind 'tab:down,shift-tab:up,ctrl-space:toggle'
"

export FZF_COMPLETION_OPTS='--border --info=inline'
export FZF_COMPLETION_PATH_OPTS='--walker file,dir,follow,hidden'
export FZF_COMPLETION_DIR_OPTS='--walker dir,follow'
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git --exclude .venv --exclude __pycache__'


# Preview file content using bat (https://github.com/sharkdp/bat)
export FZF_CTRL_T_OPTS="
    --walker-skip .git,node_modules,target,.venv,.cache,.docker,.cargo,.android,.themes,.fonts,Books,.cert,.binaryninja,.bundle,.kube,.redis-insight,.solargraph,.vmodules
    --preview 'bat -n --color=always {}'
    --height 100%
"

# Print tree structure in the preview window
export FZF_ALT_C_OPTS="
    --walker-skip .git,node_modules,target,.venv,.cache
    --preview 'tree -C {}'
    --height 100%"

export FZF_CTRL_R_OPTS="
    --preview 'echo {}' --preview-window up:3:hidden:wrap
    --bind 'ctrl-t:execute-silent(echo -n {2..} | xclip -i)+abort'
    --color header:italic
    --header 'Press CTRL-T to copy command into clipboard'
    --height 80%"

_fzf_compgen_path() {
    fd --hidden --follow --exclude ".git,.venv" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
    fd --type d --hidden --follow --exclude ".git" . "$1"
}

# Ctrl-G + ?
if [[ -f ~/dots/dotfiles/fzf-git.sh ]]; then
    source $HOME/dots/dotfiles/fzf-git.sh
fi

#
# [[ $PATH =~ everything.fzf ]] || PATH="$HOME/dots/dotfiles/everything.fzf:$PATH"
#

source <(fzf --zsh)

HISTFILE="$HOME/.zsh_history"
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

setopt hist_ignore_all_dups
setopt hist_ignore_space

# export MANPAGER="nvim -c set ft=man -"
# export BAT_THEME='gruvbox-dark' # or just set this in $HOME/.config/bat/config
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

export IRUBY_SESSION_ADAPTER="cztop"

export LS_COLORS="rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:";
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"

export EDITOR=nvim
export BROWSER=brave-browser
export PAGER="bat -p"
export TERM="xterm-256color"
export TIMEFMT=$'\n[job name] %J\n\n\t[0] real:    %E :: %mE :: %uE\n\t[1] user:    %U\n\t[2]  sys:    %S\n\t[3]  cpu:    %P'

# support colors in less
# export LESS_TERMCAP_mb=$'\e[1;31m'     # Blink
# export LESS_TERMCAP_md=$'\e[1;34m'     # Bold (Headers)
# export LESS_TERMCAP_me=$'\e[0m'        # End mode
# export LESS_TERMCAP_so=$'\e[01;44;33m' # Standout (Search highlighting)
# export LESS_TERMCAP_se=$'\e[0m'        # End standout
# export LESS_TERMCAP_us=$'\e[1;36m'     # Underline (Arguments)
# export LESS_TERMCAP_ue=$'\e[0m'        # End underline
# export LESS_TERMCAP_mr=$'\e[7m'        # Reverse video
# export GROFF_NO_SGR=1                  # For Konsole and Gnome-terminal

less() {
    bat --color=always "$@"
}

export NNN_PLUG='f:finder;o:fzopen;p:mocq;d:diffs;t:nmount;v:imgview;p:preview-tui;t:preview-tabbed'
export GPG_TTY=$(tty)

export GPG_TTY=\$(tty)
export PSQL_PAGER='pspg -X -s 5'

export QT_QPA_PLATFORMTHEME=qt5ct

# Podman related
export KIND_EXPERIMENTAL_PROVIDER=podman

# [Cod](https://github.com/dim-an/cod)
source <(cod init $$ zsh)

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/baka/.lmstudio/bin"
# End of LM Studio CLI section


# Performance
# zprof
