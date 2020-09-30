set wrap
set textwidth=0 wrapmargin=0
set mouse=
set ttymouse=

filetype plugin indent on

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell
autocmd FileType ruby nmap <F5> :!ruby %<cr>
autocmd FileType yaml setl indentkeys-=<:>

:map Q <Nop>

map q: <Nop>
noremap Q <nop>

packloadall

set exrc
set secure
