scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

function vimdemypy#execute()
    if executable("mypy")
        silent !clear
        execute "!mypy " . bufname("%")
    else
        echo "'mypy' is not executable. please install mypy."
    endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
