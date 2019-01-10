set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" options
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'taglist.vim'
Plugin 'gmccreight/vim-easygrep'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-pathogen'
" sudo apt install ctags

call vundle#end()


filetype on
filetype indent on
filetype plugin on
filetype plugin indent on


set nu
set ruler

set showcmd
set showmatch

set autoindent
set cindent
set cino=g0,+0,+t0

set tabstop=4
set sw=4
set smarttab
set expandtab
set softtabstop=4
set matchtime=2

set hlsearch

set ignorecase

set mouse=a

set selection=exclusive

set exrc

set secure

syntax enable
syntax on

set background=dark
colorscheme hybrid
hi LineNr ctermfg=darkgrey ctermbg=black
set cursorline
hi CursorLine ctermbg=black

nnoremap <C-k> kddpk
nnoremap <C-j> ddp
nnoremap <C-a> ggvG$
nnoremap <C-v><C-a> gg<C-v>G$


if exists('CStyle')
	source ~/.vim/CStyle.vim
endif

if exists('python')
	source ~/.vim/python.vim
endif

