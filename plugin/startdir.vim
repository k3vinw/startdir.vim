" Title:        startdir.vim - Start Vim where you intend
" Description:  Sets Vim's working directory based on the file or directory you pass at startup.
" Maintainer:   Kevin Ray Wood <https://gitlab.com/kevinrw>
" Version:      1.0.0

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_startdir_plugin")
    finish
endif
let g:loaded_startdir_plugin = 1

" setup vim command
command! -nargs=0 StartDir call startdir#Init()

" setup the autocmd group
augroup startdir_group
    " run magic working directory on startup
    autocmd VimEnter * call startdir#Init()
augroup end

