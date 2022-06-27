alias to='cd'
alias nrc="nvim ~/.config/nvim/init.vim"
alias zrc="nvim ~/.zshrc"
alias tt='fg'
# alias t='todo'
alias h='dijo'
alias j="jobs -l"
alias rm="rm -I"
alias b="bb pdf djvu"
alias B="fzf_books"
alias D="cd /mnt/hdd/Documents/Books"
alias DD="cd /mnt/hdd/Documents/"

alias warpc='warp-cli connect'
alias warpd='warp-cli disconnect'
alias warps='warp-cli status'

alias ch="tldr \$(tldr -l | fzf)"

alias __="sudo \$(fc -ln -1)"
alias please="sudo \$(fc -ln -1)"
alias _='sudo'
alias ctl='systemctl'

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

alias aoeu=asdf

alias rr=ranger

# Redshift
alias rday="redshift -x -m randr && redshift -m randr -O 3500 -b 0.9"
alias rdayq="redshift -x -m randr && redshift -m randr -O 3500 -b 0.9 && exit"
alias rnight="redshift -x -m randr && redshift -m randr -O 2600 -b 0.8"
alias rnightq="redshift -x -m randr && redshift -m randr -O 2600 -b 0.8 && exit"
alias roff="redshift -x -m randr"
alias roffq="redshift -x -m randr && exit"

# ls
# alias ls='ls --color=yes'
# alias la='ls -lAh --color=yes'
# alias ll='ls -lh --color=yes'

alias l='lsd -lAh --group-dirs first'
alias ll='lsd -lh --group-dirs first'
alias ls='lsd --group-dirs first'
alias la='lsd -lah --group-dirs first'

# alias l='exa -lhFHg --icons'
# alias ll='exa -lahFHg --icons'
# alias ls='exa --icons'

alias fos='fossil'

alias mdir="mkdir -pv"

alias md='/home/baka/.asdf/shims/md'

alias info='info --vi-keys'
alias grep="grep -i --color=auto"
alias fd=fdfind

alias df="df -h"
alias du="du -c -h"
alias duu="du --max-depth=1"

alias da="date '+%A, %B %d, %Y [%T]'"
alias hist="history | grep"

alias :q="exit"
alias q="exit"
alias qq="exit"

alias tis='tig status'
alias til='tig log'
alias tib='tig blame -C'

# alias ed=nvim
alias vi=/usr/bin/vim
alias vim=nvim
alias ivm=nvim
alias vmi=nvim

alias cat='bat --theme base16 --color=auto'

alias set_path='export PATH="${PWD}:${PATH}"'
alias get_path='echo $PATH | tr -s ":" "\n"'

alias rzsh="source ~/.zshrc"
alias ezsh="nvim ~/.zshrc"
alias ealias="nvim ~/.aliases.zsh"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias evim="nvim ~/.config/nvim/init.vim"

alias note="jupyter notebook"


alias tran="trans -d -t ru -I"
alias tranej="trans -I :ja en:"
alias traner="trans -I :ru en:"
alias tranje="trans -I :en ja:"
alias fuck='TF_CMD=$(TF_ALIAS=fuck PYTHONIOENCODING=utf-8 TF_SHELL_ALIASES=$(alias) thefuck $(fc -ln -1 | tail -n 1)) && eval $TF_CMD && print -s $TF_CMD'

alias xpaste="xclip -o"
alias xcopy="xclip -i"
# Exapmple of use:
# ls | xcopy
# xpaste > input.txt


# alias openn='xdg-open &>/dev/null'
alias O='xdg-open &>/dev/null'

# alias merge="xrdb -merge /home/unx/.Xresources"
alias batv="fzf --preview 'bat --theme base16 --color \"auto\" {}'"
alias ncdu="ncdu --color=dark"
alias rnn="xrandr --output HDMI-A-0 --brightness"
alias lnn="xrandr --output DVI-D-0 --brightness"

# alias yl=youtube-dl
alias yl=yt-dlp
# alias yl='youtube-dl -o "$HOME/Videos/%(channel)s/%(playlist)s/%(title)s-%(id)s.%(ext)s"'
# alias ylp='youtube-dl --yes-playlist -o "$HOME/Videos/%(channel)s/%(playlist)s/%(title)s-%(id)s.%(ext)s"'
alias ylp='yt-dlp --yes-playlist -o "$HOME/Videos/%(channel)s/%(playlist)s/%(playlist_index)s-%(title)s-%(id)s.%(ext)s"'
# alias ylpc='youtube-dl --yes-playlist -o "./%(channel)s/%(playlist)s/%(title)s-%(id)s.%(ext)s"'
alias ylpc='yt-dlp --yes-playlist -o "./%(channel)s/%(playlist)s/%(playlist_index)s-%(title)s-%(id)s.%(ext)s"'

alias yl-fast="yt-dlp -f best --external-downloader aria2c --external-downloader-args \"-j 16 -s 16 -x 16 -k 1M\" $1"


# apt install libmozjs-78-dev
alias js='js78'

alias mm='vifm'

alias ml='multipass'

alias gentags="ripper-tags -R --exclude=.git"

alias bonsai="cbonsai -ilL60"

alias resync_it="rsync --delete --verbose --recursive --update --progress /mnt/hdd/Documents/ /mnt/half/Documents"


alias mpvs="mpv --no-osc --osd-on-seek=no --no-resume-playback --input-ipc-server=$HOME/.mpv/socket --wid=\$WINDOWID"
alias mpvss="mpv --shuffle --no-osc --osd-on-seek=no --no-resume-playback --input-ipc-server=$HOME/.mpv/socket --wid=\$WINDOWID"
alias mpvw="mpv --wid=\$WINDOWID"

alias jl='julia'

alias cam_adbfhd='droidcam-cli -size=1920x1080 4747'
alias cam_adbhd='droidcam-cli -size=1280x720 4747'
alias cam_fhd='droidcam-cli -size=1920x1080 192.168.0.11 4747'
alias cam_hd='droidcam-cli -size=1280x720 192.168.0.11 4747'

alias screenkey_right='screenkey -p fixed -g 100%x10%+100%+90% -f "DejaVu Sans Mono Bold"'
alias screenkey_left='screenkey -p fixed -g 100%x10%+0%+90% -f "DejaVu Sans Mono Bold"'

# alias neofetch='neofetch --ascii_distro Ubuntu_small --disable cpu gpu gtk2 gtk3 packages shell kernel theme icons'
alias neofetch='neofetch --ascii ~/drafts/ussr --disable cpu gpu gtk2 gtk3 packages shell kernel theme icons'
# alias ghci='ghci 2>&1 | HsColour -tty'

alias gcdeb='gcc -g -fverbose-asm -masm=intel -S'
alias disas='objdump -drwCS -Mintel'

# https://dyn.manpages.debian.org/bullseye/manpages-ja-dev/index.html
alias manj='man --locale=ja'

alias server="ruby -run -e httpd . -p 8080"

alias cr='crystal'
alias cri='crystal init'

alias py='python'

# alias date="dunstify -u low '$(date)'"


alias right_wall="xwinwrap -ov -g 1920x1080+1920+0 -- mpv -wid WID  --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio --panscan=1.0 --no-input-default-bindings"
alias right_wall_audio="xwinwrap -ov -g 1920x1080+1920+0 -- mpv -wid WID  --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --panscan=1.0 --no-input-default-bindings"


alias lofi="mpvw https://www.youtube.com/watch\?v\=5qap5aO4i9A --no-resume-playback"


alias iI='ipython'
alias ii='ptpython'



