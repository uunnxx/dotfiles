#!/bin/sh
#
# ~/.xinitrc

# Executed by startx export GTK_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

xset +fp /home/baka/.local/share/fonts
xset fp rehash

# 108 is Alt_R
xmodmap -e "keycode 108 = Menu"

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs
# if [ -d /etc/X11/xinit/xinitrc.d ] ; then
#     for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
#         [ -x "$f" ] && . "$f"
#     done
#     unset f
# fi

# start session
# DEFAULT_SESSION='i3 --shmlog-size 0'
# get_session(){
#     local dbus_args=(--sh-syntax --exit-with-session)
#     case $1 in
#         gnome) dbus_args+=(gnome-session) ;;
#         i3|i3wm) dbus_args+=(i3 --shmlog-size 0) ;;
#         *) dbus_args+=($DEFAULT_SESSION) ;;
#     esac
#
#     echo "dbus-launch ${dbus_args[*]}"
# }
#
# exec $(get_session)
