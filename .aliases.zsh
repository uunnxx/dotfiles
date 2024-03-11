# Shortcuts
alias to='cd'
alias tt='fg'
alias j="jobs -l"
alias rm='remove'

alias b="bb pdf djvu"
alias B="fzf_books"
alias D="cd /mnt/hdd/Documents/Books"
alias DD="cd /mnt/hdd/Documents/"

# https://gitlab.com/volian/nala
alias nai='sudo nala install'
alias nap='sudo nala purge'
alias nar='sudo nala remove'
alias nali='nala list --installed'
alias nas='nala search'
alias nash='nala show'
alias nau='sudo nala update'
alias naug='sudo nala upgrade'
alias nauu='sudo nala update && sudo nala upgrade'

alias l='lsd -lAh --group-dirs first'
alias ll='lsd -lh --group-dirs first'
alias ls='lsd --group-dirs first'
alias la='lsd -lah --group-dirs first'


alias rg='rg -S'
alias -g RG='| rg -S'

alias mdir="mkdir -pv"

alias df="df -h"
alias du="du -c -h"
alias duu="du --max-depth=1"

alias da="date '+%A, %B %d, %Y [%T]'"

alias hist="history | grep"

alias :q="exit"
alias q="exit"
alias qq="exit"
alias ctl='systemctl'

alias __="sudo \$(fc -ln -1)"
alias please="sudo \$(fc -ln -1)"
alias _='sudo'
alias fuck='TF_CMD=$(TF_ALIAS=fuck PYTHONIOENCODING=utf-8 TF_SHELL_ALIASES=$(alias) thefuck $(fc -ln -1 | tail -n 1)) && eval $TF_CMD && print -s $TF_CMD'

## Translation
alias tran="trans -d -t ru -I"
alias tranej="trans -I :ja en:"
alias traner="trans -I :ru en:"
alias tranre="trans -I :en ru:"
alias tranje="trans -I :en ja:"
alias t="trans :ru"
alias tI="trans :ru"

alias O='xdg-open &>/dev/null'

# alias merge="xrdb -merge ~/.Xresources"
alias ncdu="ncdu --color=dark"
alias rnn="xrandr --output HDMI-A-0 --brightness"
alias lnn="xrandr --output DVI-D-0 --brightness"

alias mpvs="mpv --no-osc --osd-on-seek=no --no-resume-playback --input-ipc-server=$HOME/.mpv/socket --wid=\$WINDOWID"
alias mpvss="mpv --shuffle --no-osc --osd-on-seek=no --no-resume-playback --input-ipc-server=$HOME/.mpv/socket --wid=\$WINDOWID"
alias mpvw="mpv --wid=\$WINDOWID"

alias bonsai="cbonsai -ilL60"
alias redshift='redshift -m randr'
# -----------------------------------------------------------------------------


# Programming related
alias jl='julia'

alias cr='crystal'
alias cri='crystal init'
alias crb='crystal build'
alias crs='crystal specs'
alias crt='crystal tool'
alias crtc='crystal tool context'
alias crth='crystal tool hierarchy'

# Python related
alias py='python'

alias pym='./manage.py'
alias dja='django-admin'
alias manage='./manage.py'
alias admin='django-admin'

alias iI='ipython'
alias II='bpython'
# alias ii='ptpython'
alias ii='ptipython'
alias note="jupyter notebook"

# alias pipir='pip install -r requirements.txt'
# alias pipreq='pip freeze > requirements.txt'
# alias pipu='pip install --upgrade'
alias pipfi='pip freeze | fzf'
alias pipf='pip freeze'
# alias pipun='pip uninstall'
# alias pipi='pip install'

alias venv='python3 -m venv .venv'
alias vac='source ./.venv/bin/activate'
alias vad='deactivate'

alias rb='ruby'
alias gentags="ripper-tags -R --exclude=.git"

alias server_rb="ruby -run -e httpd . -p 8080"
alias server_py="python -m http.server"

alias el=erl
alias rebar=rebar3

alias sqlite='sqlite3'

# install libmozjs-78-dev
alias js='js78'

alias gcdeb='gcc -g -fverbose-asm -masm=intel -S'
alias disas='objdump -drwCS -Mintel'

# https://dyn.manpages.debian.org/bullseye/manpages-ja-dev/index.html
alias manj='man --locale=ja'

alias ch="tldr \$(tldr -l | fzf)"

alias fos='fossil'
alias pl='pijul'

alias lg='lazygit'
alias lzd='lazydocker'
alias tis='tig status'
alias til='tig log'
alias tib='tig blame -C'

alias rp='rspec --color'
alias rpfd='rspec --color --format d'

alias aoeu=asdf
alias ml='multipass'
alias dc=docker

alias set_path='export PATH="${PWD}:${PATH}"'
alias get_path='echo $PATH | tr -s ":" "\n"'

## tools
alias vi=/usr/bin/vim
alias vim=nvim
alias ivm=nvim
alias vmi=nvim

alias vv=vimv

alias bat='bat --theme base16 --color=auto'
alias batp='bat --plain --theme base16 --color=auto'
alias batv="fzf --preview 'bat --theme base16 {}'"
alias rr=ranger
alias info='info --vi-keys'
alias grep="grep -i --color=auto"
alias fd=fdfind
alias ff="fzf --bind 'enter:become(nvim {})' --header 'Press ENTER to open this file on NVIM' --preview 'bat -n --color=always {}' --height 95% --color header:italic"

alias xpaste="xclip -o"
alias xcopy="xclip -i"
# Usage:
# ls | xcopy
# xpaste > input.txt
# -----------------------------------------------------------------------------


# Stream related
# 88 because of statusbar
alias screenkey_right='screenkey -p fixed -g 100%x10%+100%+88% -f "DejaVu Sans Mono Bold"'
alias screenkey_left='screenkey -p fixed -g 100%x10%+0%+88% -f "DejaVu Sans Mono Bold"'

# Droid Cam
# alias cam_adbfhd='droidcam-cli -size=1920x1080 4747'
# alias cam_adbhd='droidcam-cli -size=1280x720 4747'
# alias cam_fhd='droidcam-cli -size=1920x1080 192.168.0.11 4747'
# alias cam_hd='droidcam-cli -size=1280x720 192.168.0.11 4747'
# -----------------------------------------------------------------------------


# Downloader
alias yl="yt-dlp --embed-thumbnail --embed-chapters --embed-subs -f mp4"
alias ylnp="yt-dlp --embed-thumbnail --embed-chapters --embed-subs -f mp4 --no-playlist"
alias ylph='yt-dlp --embed-thumbnail --embed-chapters --embed-subs -f mp4 --yes-playlist -o "$HOME/Videos/%(channel)s/%(playlist)s/%(playlist_index)s-%(title)s-%(id)s.%(ext)s"'
alias ylpc='yt-dlp --embed-thumbnail --embed-chapters --embed-subs -f mp4 --yes-playlist -o "./%(channel)s/%(playlist)s/%(playlist_index)s-%(title)s-%(id)s.%(ext)s"'

alias yl-fast="yt-dlp --embed-thumbnail --embed-chapters --embed-subs -f best --external-downloader aria2c --external-downloader-args \"-j 16 -s 16 -x 16 -k 1M\" $1"
# -----------------------------------------------------------------------------


# Wall's
# alias neofetch='neofetch --ascii_distro Ubuntu_small --disable cpu gpu gtk2 gtk3 packages shell kernel theme icons'
alias neofetch='neofetch --ascii ~/drafts/ussr --disable gtk2 gtk3 packages theme icons'

# Repeat current file only: --loop-file
alias right_wall="xwinwrap -ov -g 1920x1080+1920+0 -- mpv --no-resume-playback \
    -wid WID  --shuffle --no-osc --no-osd-bar --loop-playlist \
    --player-operation-mode=cplayer --no-audio --panscan=1.0 \
    --no-input-default-bindings --input-ipc-server=$HOME/.mpv/socket"

alias right_wall_audio="xwinwrap -ov -g 1920x1080+1920+0 -- mpv --no-resume-playback \
    -wid WID  --shuffle  --no-osc --no-osd-bar --loop-playlist \
    --no-input-default-bindings --input-ipc-server=$HOME/.mpv/socket"

alias qrelated="xwinwrap -ov -g 1920x1080+1920+0 -- mpv --no-resume-playback \
    --shuffle -wid WID  --no-osc --no-osd-bar --loop-playlist \
    --player-operation-mode=cplayer --panscan=1.0 --no-input-default-bindings \
    --input-ipc-server=$HOME/.mpv/socket $HOME/Music/current/"
# -----------------------------------------------------------------------------


# Lofi Girl's stream
# alias lofi="mpv --wid=\$WINDOWID https://www.youtube.com/watch\?v\=jfKfPfyJRdk --no-resume-playback"

# Shell related
alias loadshell="source ~/.zshrc"
alias editshell="nvim ~/.zshrc"
alias editalias="nvim ~/.aliases.zsh"
alias editomz="nvim ~/.oh-my-zsh"
# -----------------------------------------------------------------------------

alias resync_it="rsync --delete --verbose --recursive --update --progress /mnt/hdd/Documents/ /mnt/backup/Documents/"

# Redshift
alias rday="redshift -x -m randr && redshift -m randr -O 3500 -b 0.9"
alias rdayq="redshift -x -m randr && redshift -m randr -O 3500 -b 0.9 && exit"
alias rnight="redshift -x -m randr && redshift -m randr -O 2600 -b 0.8"
alias rnightq="redshift -x -m randr && redshift -m randr -O 2600 -b 0.8 && exit"
alias roff="redshift -x -m randr"
alias roffq="redshift -x -m randr && exit"
# -----------------------------------------------------------------------------
