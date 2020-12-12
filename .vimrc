set nocompatible
filetype plugin on

inoremap eu <Esc>
nnoremap ,ww :w<cr>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Use `R` to Remove/delete linewise text without overwriting last yank
nmap R "_dd
vmap R "_d

set mouse=a

"
