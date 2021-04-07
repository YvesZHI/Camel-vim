#!/bin/bash


git config --global url."https://".insteadOf git://
cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive
#rm -rf ~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/cregex
#cd ~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/ && git clone https://github.com/golang/tools.git
#cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive

#CXX=clang++-8 ./install.py --clangd-completer
~/.vim/bundle/YouCompleteMe/install.py --clangd-completer
