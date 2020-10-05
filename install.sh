#!/usr/bin/env bash

DIR=$(pwd)

# Symlink dot files
ln -s $DIR/vimrc ~/.vimrc

# Install vim plugins (assumes that vim version >= 8)
# NERDTree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# tpopes' commentary.vim
mkdir -p ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/commentary.git ~/.vim/pack/tpope/start
vim -u NONE -c "helptags commentary/doc" -c q

# tpope's surround
git clone https://tpope.io/vim/surround.git ~/.vim/pack/tpope/start
vim -u NONE -c "helptags surround/doc" -c q
