#!/bin/sh

#/usr/bin/prime-offload

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

#if [systemd-detect-virt = "oracle"];
#	/usr/bin/VBoxClient-all

#fi

source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

autorandr --change
xrandr --dpi 96
xrdb /home/watcherwhale/.Xresources

xset s off
xset -dpms

export QT_QPA_PLATFORMTHEME=gtk2
export QT_SCALE_FACTOR=1
export PATH=$PATH:~/.scripts/:/usr/local/MATLAB/R2020b/bin/
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export DIFFPROG="nvim -d"
export GOPATH="$HOME/.local/go"


/usr/bin/prime-offload

#xsettingsd &

#exec i3
exec sh -c "qtile start > ~/.logqtile"
#exec herbstluftwm

#export KDEWM="/usr/bin/i3"
#exec startplasma-x11

# Exit the tty
#exit
