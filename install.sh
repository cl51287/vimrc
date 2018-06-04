#!/bin/sh

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp $(dirname $0)/vimrc ~/
vim +PluginInstall +qall

export TERM=xterm-256color
