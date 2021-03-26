#!/bin/sh

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

/home/$USER/.suckless/dwm-bar/dwm_bar.sh &
exec dwm
