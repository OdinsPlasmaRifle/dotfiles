#!/bin/sh

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# merge xresources(color schemes and other configurations)
xrdb -merge ~/.Xresources

# disables cross cursor on empty work space
xsetroot -cursor_name left_ptr

# launch notifcation server
dunst &

# launch devmon
devmon &

# turn off beep
xset b off

# set keyboard rte
xset r rate 300 90

# turn off screen automatically after 10 min idle
xset dpms 600 0 0

# handle fonts cache
xset +fp /usr/share/fonts/
xset fp rehash

# monitors
xrandr --output eDP-1 --auto --primary
xrandr --output HDMI-2 --auto --right-of eDP-1

# compositing
seq 0 1 | xargs -l1 -I@ compton --config $HOME/.config/compton/compton.conf -d :0.@

# set wallpaper
feh --bg-scale ~/pictures/wallpapers/wallpaper_1.jpg

# start bspwm.
sxhkd &
exec bspwm

