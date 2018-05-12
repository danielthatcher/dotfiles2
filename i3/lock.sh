#!/usr/bin/env bash

if [ -f $HOME/.i3/wallpaper.png ]; then 
    i3lock -i $HOME/.i3/wallpaper.png -u
else
    i3lock
fi
