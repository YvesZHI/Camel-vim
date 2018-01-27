#!/bin/sh


mkdir ~/.vim 2>/dev/null

cp ./vimrc ~/.vimrc
cp ./ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
cp -r ./colors ~/.vim/
cp ./*.vim ~/.vim/

sed -i '/CStyle=1/c\' ~/.bashrc
sed -i '/python=1/c\' ~/.bashrc
echo "alias vimc=\"vim --cmd 'let CStyle=1'\"" >> ~/.bashrc
echo "alias vimpy=\"vim --cmd 'let python=1'\"" >> ~/.bashrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim -k

cd ~/.vim/bundle && git clone --depth=1 https://github.com/vim-syntastic/syntastic.git


cd ~/.vim/bundle && git clone https://github.com/Valloric/YouCompleteMe.git

cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive

~/.vim/bundle/YouCompleteMe/install.py --all


echo "Now you should execute vim and type \":PluginInstall[Enter]\". Enjoy!"
