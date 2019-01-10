#!/bin/sh


mkdir ~/.vim 2>/dev/null

cp ./vimrc ~/.vimrc
cp ./ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
cp -r ./colors ~/.vim/
cp ./*.vim ~/.vim/

sed -i '/CStyle=1/c\' ~/.bashrc
sed -i '/python=1/c\' ~/.bashrc
echo "alias vimc=\"cp ~/.vim/.ycm_extra_conf.py ./ && vim --cmd 'let CStyle=1'\"" >> ~/.bashrc
echo "alias vimpy=\"vim --cmd 'let python=1'\"" >> ~/.bashrc

git clone https://github.com/universal-ctags/ctags.git
cd ctags && ./autogen.sh && ./configure && make -j8 && sudo make install && cd .. && rm -rf ctags

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cd ~/.vim/bundle && git clone https://github.com/Valloric/YouCompleteMe.git

cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive

~/.vim/bundle/YouCompleteMe/install.py --all

vim -E -c PluginInstall -c q -c q

echo "done."
