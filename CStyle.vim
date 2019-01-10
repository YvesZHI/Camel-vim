command Q call delete('.ycm_extra_conf.py')|call delete('.tags')|qa
"command Qone q|TlistClose
"cnoreabbrev q Qone
command Html s/<[^>]*/\r&/g|g/^$/d
command Gdb ConqueGdb

set completeopt=menu,preview,longest
set completeopt-=preview
set conceallevel=2
set concealcursor=vin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:clang_c_options='-std=gun11'
let g:clang_cpp_options='-std=c++11 -stdlib=libc++'

autocmd VimEnter * NERDTree
execute pathogen#infect()

set tags=.tags
autocmd VimEnter * silent! !eval 'ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -o newtags; mv newtags .tags' &
au BufWritePost *.h,*.c,*.cpp,*.hpp silent! !eval 'ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -o newtags; mv newtags .tags' &

let NERDTreeIgnore=['\(\.sh\|\.yaml\|\.mk\|\.h\|\.c\|.hpp\|\.cpp\|makefile\|Makefile\|\.html\)\@<!$[[file]]', 'bin']
let NERDTreeAutoDeleteBuffer=1
let NERDTreeShowLineNumbers=1

"let g:ycm_semantic_triggers = {
"  \   'h': [ 're!.' ],
"  \   'c': [ 're!.' ],
"  \   'hpp': [ 're!.' ],
"  \   'cpp': [ 're!.' ]
"  \ }
let g:ycm_semantic_triggers = {
  \   'h': [ '.', '->', '::' ],
  \   'c': [ '.', '->', '::' ],
  \   'hpp': [ '.', '->', '::' ],
  \   'cpp': [ '.', '->', '::' ]
  \ }

let g:Tlist_Use_Right_Window=1
let g:Tlist_Auto_Open=1

let g:EasyGrepRecursive=1
let g:EasyGrepHidden=1
let g:EasyGrepIgnoreCase=1
let g:EasyGrepMode=2
let g:EasyGrepFileAssociations=$HOME."/.vim/bundle/vim-easygrep/plugin/EasyGrepFileAssociations"

let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_global_ycm_extra_conf=$HOME."/.vim/.ycm_extra_conf.py"
let g:ycm_server_keep_logfiles=1
let g:ycm_server_log_level='debug'

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_signs=1
let g:syntastic_cpp_check_header=1
let g:syntastic_cpp_remove_include_errors=1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

let g:ConqueGdb_Leader='<Leader>'
let g:ConqueGdb_Run=g:ConqueGdb_Leader . 'r'
let g:ConqueGdb_Continue=g:ConqueGdb_Leader . 'c'
let g:ConqueGdb_Next=g:ConqueGdb_Leader . 'n'
let g:ConqueGdb_Step=g:ConqueGdb_Leader . 's'
let g:ConqueGdb_Print=g:ConqueGdb_Leader . 'p'
let g:ConqueGdb_SetBreak=g:ConqueGdb_Leader . 'b'
let g:ConqueGdb_DeleteBreak=g:ConqueGdb_Leader . 'd'
let g:ConqueGdb_Finish=g:ConqueGdb_Leader . 'f'
let g:ConqueGdb_Backtrace=g:ConqueGdb_Leader . 't'

let g:ConqueTerm_Color=2
let g:ConqueTerm_CloseOnEnd=1
let g:ConqueTerm_StartMessages=0


nnoremap <F5> :!make<CR>

nnoremap <F12> :YcmCompleter GoToDefinitionElseDeclaration<CR> \| :NERDTreeFind<CR> \| :wincmd p<CR>
nnoremap <leader>tg :TlistToggle<CR>
nnoremap <C-i> <C-i> \| :NERDTreeFind<CR> \| :wincmd p<CR>
nnoremap <C-o> <C-o> \| :NERDTreeFind<CR> \| :wincmd p<CR>
nnoremap <C-]> 2<C-]> \| :NERDTreeFind<CR> \| :wincmd p<CR>
