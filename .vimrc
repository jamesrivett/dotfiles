set tabstop=2 shiftwidth=2 expandtab
set number
set number relativenumber
set nu rnu
set background=dark

" undo and redo
nnoremap <C-z> u
nnoremap <C-y> <c-r>

" ensure mouse works in tmux
set ttymouse=xterm2
set mouse=a

" ensure static block cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

"===
"===
"===
"===  PLUGIN CONFIG
"===
"===
"===

"=== call plug#begin()
"=== Plug 'prabirshrestha/vim-lsp'
"=== call plug#end()
"=== if executable('pylsp')
"===     " pip install python-lsp-server
"===     au User lsp_setup call lsp#register_server({
"===         \ 'name': 'pylsp',
"===         \ 'cmd': {server_info->['pylsp']},
"===         \ 'allowlist': ['python'],
"===         \ })
"=== endif
"=== 
"=== function! s:on_lsp_buffer_enabled() abort
"===     setlocal omnifunc=lsp#complete
"===     setlocal signcolumn=yes
"===     if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
"===     nmap <buffer> gd <plug>(lsp-definition)
"===     nmap <buffer> gs <plug>(lsp-document-symbol-search)
"===     nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
"===     nmap <buffer> gr <plug>(lsp-references)
"===     nmap <buffer> gi <plug>(lsp-implementation)
"===     nmap <buffer> gt <plug>(lsp-type-definition)
"===     nmap <buffer> <leader>rn <plug>(lsp-rename)
"===     nmap <buffer> [g <plug>(lsp-previous-diagnostic)
"===     nmap <buffer> ]g <plug>(lsp-next-diagnostic)
"===     nmap <buffer> K <plug>(lsp-hover)
"===     nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
"===     nnoremap <buffer> <expr><c-d> lsp#scroll(-4)
"=== 
"===     let g:lsp_format_sync_timeout = 1000
"===         let g:lsp_diagnostics_echo_cursor = 1
"===     autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
"=== 
"===     " refer to doc to add more commands
"=== endfunction
"=== 
"=== augroup lsp_install
"===     au!
"===     " call s:on_lsp_buffer_enabled only for languages that has the server registered.
"===     autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
"=== augroup END
