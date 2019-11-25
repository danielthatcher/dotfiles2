#! /bin/bash

SCRIPTS_DIR=$HOME/.config/projects
selection=$(ls $SCRIPTS_DIR | rofi -dmenu -i)
[ -f $SCRIPTS_DIR/$selection ] && urxvt -e $SCRIPTS_DIR/$selection
