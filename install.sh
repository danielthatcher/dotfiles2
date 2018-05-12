#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $DIR/vim/vimrc $HOME/.vimrc
ln -s $DIR/vim/vimrc $HOME/.config/nvim/init.vim
ln -s $DIR/tmux/tmux.conf $HOME/.tmux.conf
ln -s $DIR/zsh/zshrc $HOME/.zshrc

mkdir $HOME/.i3
ln -s $DIR/i3/config $HOME/.i3/config
ln -s $DIR/i3/lock.sh $HOME/.i3/lock.sh
chmod +x $HOME/.i3/lock.sh
[ -f $HOME/.i3/i3blocks.conf ] || cp $DIR/i3/i3blocks.conf $HOME/.i3/i3blocks.conf
mkdir $HOME/.i3/blocks
for f in $(ls $DIR/i3/blocks); do
    ln -s $DIR/i3/blocks/$f $HOME/.i3/blocks/$f
done
