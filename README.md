CStyle-Python-vim-config
==========================


### Introduction ###
Install and configure the YouCompleteMe and some other plugins.<br>
For C/C++ project, execute `vimc` at the root of project.<br>
For Python project, execute `vimpy` at the root of project.


### Installation ###
Execute `./install.sh`.<br>


### General Usage ###
Execute `source ~/.bashrc` if it is the first time to make `vimc` and `vimpy` work.

`:Q`    --- quit vim and all plugins, delete `.ycm_extra_conf.py` and `.tags` in the root of project<br>
`\tg`   --- open or close the window of taglist<br>
`\cc`   --- comment one line<br>
`\cm`   --- comment multi lines<br>
`\cu`   --- uncomment<br>
`\vv`   --- search the word under cursor in project<br>
`F12`   --- jump to header file or to declaration<br>
`<C-]>` --- jump to definition<br>
`<C-o>` --- go backword<br>
`<C-i>` --- go forward<br>


### Some bugs ###
a) Downloading clang may fail while installing YCM. In this case, you need to download clang (`libclang-7.0.0-x86_64-unknown-linux-gnu.tar.bz2` for x86_64) manually from https://dl.bintray.com/micbou/libclang/ and put it into `~/.vim/bundle/YouCompleteMe/third_party/ycmd/clang_archives/`.<br>
b) On Mac OS, you need to install `ctags` with `brew` with the command: `brew install ctags`, and then add `ctags="`brew --prefix`/bin/ctags"` into the `~/.bashrc`.
