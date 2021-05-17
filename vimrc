set nocompatible
filetype off

filetype plugin indent on

set nu
set ruler

set showcmd
set showmatch
set autoread
set diffopt+=vertical

set foldmethod=indent
set foldlevelstart=99

set autoindent
set cindent
set cino=g0,+0,+t0

set tabstop=4
set sw=4
set smarttab
set expandtab
set softtabstop=4
set matchtime=2
set formatoptions-=cro
set statusline=%<%f\ %h%m%r\ %y%=%{v:register}\ %-14.(%l,%c%V%)\ %P
set backspace=indent,eol,start

set hlsearch

set ignorecase

set mouse=a

set selection=exclusive

set exrc

set secure

syntax enable
syntax on

set matchpairs+=<:>

command Noh noh
command NOh noh
command NOH noh

inoremap <C-k> <Esc>:w<CR>
nnoremap <C-k> :w<CR>:noh<CR>
nnoremap <C-\> i<CR><Esc>
nnoremap <tab> :noh<CR>

"function! AutoIndent()
"    startinsert
"    call feedkeys("\<CR>")
"    call feedkeys("\<Esc>")
"    call feedkeys("\<C-o>O")
"endfunction
"inoremap } }<Esc>:call AutoIndent()<CR>

"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap < <><left>
"inoremap { {}<left>
"inoremap }} {}<left><CR><C-o>O
inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a

nnoremap + <C-w>>
nnoremap - <C-w><

nnoremap # :keepjumps normal! miHmt`i#'tzt`i<CR>
nnoremap * :keepjumps normal! miHmt`i*'tzt`i<CR>

noremap x "_x
noremap s "_s
vnoremap p "_dP

command Qt tabclose

if exists('Camel')
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " options
    "Plugin 'Valloric/YouCompleteMe'
    Plugin 'rdnetto/YCM-Generator'
    Plugin 'preservim/nerdtree' |
                \ Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'scrooloose/syntastic'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'taglist.vim'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    Plugin 'Yggdroot/indentLine'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-fugitive'
    Plugin 'YvesZHI/vim-code-dark'
    Plugin 'YvesZHI/vim-cpp-enhanced-highlight'
    Plugin 'vim-scripts/Conque-GDB'

    call vundle#end()
    if !exists('install')
        source ~/.vim/Camel.vim
    endif
endif

nnoremap <silent> <Plug>SurroundSingleQuote ciw''<Esc>P:silent! call repeat#set("\<Plug>SurroundSingleQuote", v:count)<CR>
nmap <Leader>' <Plug>SurroundSingleQuote
nnoremap <silent> <Plug>UnsurroundSingleQuote F'xf'x:silent! call repeat#set("\<Plug>UnsurroundSingleQuote", v:count)<CR>
nmap <Leader><leader>' <Plug>UnsurroundSingleQuote
nnoremap <silent> <Plug>SurroundDoubleQuote ciw""<Esc>P:silent! call repeat#set("\<Plug>SurroundDoubleQuote", v:count)<CR>
nmap <Leader>" <Plug>SurroundDoubleQuote
nnoremap <silent> <Plug>UnsurroundDoubleQuote F"xf"x:silent! call repeat#set("\<Plug>UnsurroundDoubleQuote", v:count)<CR>
nmap <Leader><leader>" <Plug>UnsurroundDoubleQuote
nnoremap <silent> <Plug>SurroundParentheses ciw()<Esc>P:silent! call repeat#set("\<Plug>SurroundParentheses", v:count)<CR>
nmap <Leader>( <Plug>SurroundParentheses
nnoremap <silent> <Plug>UnsurroundParentheses F(xf)x:silent! call repeat#set("\<Plug>UnsurroundParentheses", v:count)<CR>
nmap <Leader><leader>( <Plug>UnsurroundParentheses
nnoremap <silent> <Plug>SurroundBrackets ciw[]<Esc>P:silent! call repeat#set("\<Plug>SurroundBrackets", v:count)<CR>
nmap <Leader>[ <Plug>SurroundBrackets
nnoremap <silent> <Plug>UnsurroundBrackets F[xf]x:silent! call repeat#set("\<Plug>UnsurroundBrackets", v:count)<CR>
nmap <Leader><leader>[ <Plug>UnsurroundBrackets
nnoremap <silent> <Plug>SurroundBraces ciw{}<Esc>P:silent! call repeat#set("\<Plug>SurroundBraces", v:count)<CR>
nmap <Leader>{ <Plug>SurroundBraces
nnoremap <silent> <Plug>UnsurroundBraces F{xf}x:silent! call repeat#set("\<Plug>UnsurroundBraces", v:count)<CR>
nmap <Leader><leader>{ <Plug>UnsurroundBraces
nnoremap <silent> <Plug>SurroundChevrons ciw<><Esc>P:silent! call repeat#set("\<Plug>SurroundChevrons", v:count)<CR>
nmap <Leader>< <Plug>SurroundChevrons
nnoremap <silent> <Plug>UnsurroundChevrons F<xf>x:silent! call repeat#set("\<Plug>UnsurroundChevrons", v:count)<CR>
nmap <Leader><leader>< <Plug>UnsurroundChevrons
vnoremap <leader>' s''<Esc>P
vnoremap <leader>" s""<Esc>P
vnoremap <leader>( s()<Esc>P
vnoremap <leader>[ s[]<Esc>P
vnoremap <leader>{ s{}<Esc>P
vnoremap <leader>< s<><Esc>P

inoremap <C-e> <Esc>lxepi
inoremap <C-l> <Esc>A
inoremap <C-\> <Esc>ciw

" The color settings must be at the end of file
hi! Normal ctermbg=NONE guibg=NONE
hi LineNr ctermfg=blue ctermbg=black
hi Visual cterm=bold ctermbg=blue ctermfg=Black
hi Search cterm=bold ctermbg=lightyellow ctermfg=Black
hi DiffAdd cterm=bold ctermbg=Red ctermfg=White
hi DiffDelete cterm=bold ctermbg=White ctermfg=Black
hi DiffText cterm=bold ctermbg=Yellow ctermfg=Black
hi DiffChange cterm=bold ctermbg=darkblue ctermfg=Black
hi MatchParen cterm=underline ctermbg=Black ctermfg=lightyellow
hi StatusLine ctermbg=White ctermfg=DarkGrey
hi Pmenu ctermbg=DarkGrey ctermfg=Yellow
set cursorline
hi CursorLine cterm=bold ctermbg=black
