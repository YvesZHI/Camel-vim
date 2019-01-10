YCM-config
==========================


### Introduction ###
Install and configure the YouCompleteMe and some other plugins.
For C/C++ project, execute `vimc` at the root of project.
For Python project, execute `vimpy` at the root of project.


### Installation ###
Execute `./install.sh`.<br>


### General Usage ###
Execute `source ~/.bashrc` if it is the first time to make `vimc` and `vimpy` work.

:Q    --- quit vim and all plugins, delete `.ycm_extra_conf.py` and `.tags` in the root of project.
\tg   --- open or close the window of taglist
\cc   --- comment one line
\cm   --- comment multi lines
\cu   --- uncomment
\vv   --- search the word under cursor in project
F12   --- jump to header file or to declaration
<C-]> --- jump to definition
<C-o> --- go backword
<C-i> --- go forward
