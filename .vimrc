set tabstop=4
set number
set number relativenumber
set nu rnu
set background=dark

nnoremap <C-z> u
nnoremap <C-y> <c-r>

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" reset the cursor on start (for older versions of vim, usually not required)
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

