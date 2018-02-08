scriptencoding utf-8

if exists('g:loaded_vimmypy')
    finish
endif
let g:loaded_vimmypy = 1

let s:save_cpo = &cpo
set cpo&vim

command! Mypy call vimdemypy#execute()
nnoremap <silent> ,mp :call vimdemypy#execute()<cr>

let &cpo = s:save_cpo
unlet s:save_cpo
