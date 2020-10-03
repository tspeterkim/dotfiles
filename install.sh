#!/usr/bin/env bash

DIR=$(pwd)

# Symlink dot files
ln -s $DIR/vimrc ~/.vimrc

# Install vim plugins (assumes that vim version >= 8)
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
