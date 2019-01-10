YCM-config
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
