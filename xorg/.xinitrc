#!/bin/sh

# See: https://cgit.freedesktop.org/xorg/lib/libX11/tree/nls/en_US.UTF-8/Compose.pre
setxkbmap -option compose:caps

solarized=$HOME/.Xsolarized_dark
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"; xrdb -merge "$solarized"
fi

feh --bg-scale $HOME/Pictures/wallpapers/background.png --no-fehbg
exec i3
