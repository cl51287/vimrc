#!/bin/sh
tar xvjf vim-7.4.tar.bz2
cd vim74
./configure --prefix=/home/chenlong/vim-7.4 --enable-multibyte --enable-fontset --with-features=huge
makr && make install
