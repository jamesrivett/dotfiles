set tabstop=4
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
