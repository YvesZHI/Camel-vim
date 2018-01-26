command Q q|q|q|q|q|q|q
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

let NERDTreeIgnore=['\(\.sh\|\.h\|\.c\|.hpp\|\.cpp\|makefile\|Makefile\|\.html\)\@<!$[[file]]', 'bin']
let NERDTreeAutoDeleteBuffer=1
let NERDTreeShowLineNumbers=1

let g:ycm_semantic_triggers = {
  \   'h': [ 're!.' ],
  \   'c': [ 're!.' ],
  \   'hpp': [ 're!.' ],
  \   'cpp': [ 're!.' ]
  \ }


let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
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
vnoremap <F7> <C-v>^I//<Esc> \| :noh<CR>
vnoremap <F8> :s/^ *\t*\/\///g<CR> \| :noh<CR>
nnoremap <F7> <C-v>^I//<Esc> \| :noh<CR>
nnoremap <F8> :s/^ *\t*\/\///g<CR> \| :noh<CR>
           "\jd
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F12> :YcmCompleter GoToDefinitionElseDeclaration<CR>

