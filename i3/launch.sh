#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/local.conf

if [ $1 == "browser" ]; then
    $APP_BROWSER
elif [ $1 == "music" ]; then
    $APP_MUSIC
elif [ $1 == "terminal" ]; then
    $APP_TERMINAL
fi
