#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $DIR/vim/vimrc $HOME/.vimrc
mkdir -p $HOME/.config/nvim
ln -s $DIR/vim/UltiSnips $HOME/.config/nvim/UltiSnips
ln -s $DIR/vim/vimrc $HOME/.config/nvim/init.vim
ln -s $DIR/tmux/tmux.conf $HOME/.tmux.conf
ln -s $DIR/zsh/zshrc $HOME/.zshrc
mkdir -p $HOME/.config/polybar
ln -s $DIR/polybar/config $HOME/.config/polybar/config

mkdir $HOME/.i3
[ -f $HOME/.i3/local.conf ] || cp $DIR/i3/local.conf $HOME/.i3
ln -s $DIR/i3/config $HOME/.i3/config
ln -s $DIR/i3/lock.sh $HOME/.i3/lock.sh
ln -s $DIR/i3/launch.sh $HOME/.i3/launch.sh
chmod +x $HOME/.i3/lock.sh
[ -f $HOME/.i3/i3blocks.conf ] || cp $DIR/i3/i3blocks.conf $HOME/.i3/i3blocks.conf
mkdir $HOME/.i3/blocks
for f in $(ls $DIR/i3/blocks); do
    ln -s $DIR/i3/blocks/$f $HOME/.i3/blocks/$f
done
ln -s $DIR/polybar/polybar-launch.sh $HOME/.i3/polybar-launch.sh
mkdir -p $HOME/.config/rofi/
mkdir -p $HOME/.config/projects
ln -s $DIR/rofi/launchers $HOME/.config/rofi/

# Vim plug install
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c ':PlugInstall'

# Vim coc settings
ln -s $DIR/vim/coc-settings.json $HOME/.config/nvim/coc-settings.json

# zsh plugins
ZSH_PLUGIN_DIR=$HOME/.config/zsh/plugins
mkdir -p $ZSH_PLUGIN_DIR
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_PLUGIN_DIR/zsh-autosuggestions
