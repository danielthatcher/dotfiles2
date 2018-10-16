#!/usr/bin/env bash

# Check for betterlockscreen script
which betterlockscreen && betterlockscreen -l && exit 0

# Fall back to i3lock
if [ -f $HOME/.i3/wallpaper.png ]; then 
    i3lock -i $HOME/.i3/wallpaper.png -u
else
    i3lock
fi
