command Q call delete('.ycm_extra_conf.py')|qa
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

autocmd VimEnter * NERDTree

let NERDTreeIgnore=['\(\.py\|\.html\)\@<!$[[file]]']
let NERDTreeAutoDeleteBuffer=1
let NERDTreeShowLineNumbers=1

let g:Tlist_Use_Right_Window=1
let g:Tlist_Auto_Open=1

let g:EasyGrepRecursive=1
let g:EasyGrepHidden=1
let g:EasyGrepIgnoreCase=1
let g:EasyGrepMode=2
let g:EasyGrepFileAssociations="/home/zyh/.vim/bundle/vim-easygrep/plugin/EasyGrepFileAssociations"

let g:ycm_python_binary_path='/usr/bin/python2.7'
let g:ycm_python_binary_path='python'

let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1

let g:jedi#completions_enabled = 1
let g:jedi#force_py_version = 3
let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 0
set omnifunc=jedi#completions

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_signs=1

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

let g:autotagTagsFile=".tags"

"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F12> :YcmCompleter GoToDefinitionElseDeclaration<CR> \| :NERDTreeFind<CR> \| <C-w><C-w> \| g;
"nnoremap <leader>tg :TlistToggle<CR>
nnoremap tg :TlistToggle<CR>
nnoremap <C-i> <C-i> \| :NERDTreeFind<CR> \| <C-w><C-w> \| g;
nnoremap <C-o> <C-o> \| :NERDTreeFind<CR> \| <C-w><C-w> \| g;
