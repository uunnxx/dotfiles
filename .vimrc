call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'https://github.com/morhetz/gruvbox'


" Plug 'ekickx/clipboard-image.nvim'


call plug#end()


" ********************************************************************
" UI SECTION
" ********************************************************************

set background=dark
set termguicolors
set t_Co=256


let g:gruvbox_contrast_dark="hard"
let g:gruvbox_contrast_light="soft"
let g:gruvbox_invert_selection=1
let g:gruvbox_italic=1

colorscheme gruvbox

set nocompatible
filetype plugin on

" Highlight whitespaces
"
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()

" ********************************************************************
" END OF UI SECTION
" ********************************************************************


" ********************************************************************
" MAP SECTION
" ********************************************************************

nnoremap <C-b> :center 80<cr>hhv0r#A<space><esc>40A#<esc>d80<bar>YppVr#kk.

inoremap eu <Esc>
nnoremap ,ww :w<cr>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Use `R` to Remove/delete linewise text without overwriting last yank
" nmap R "_dd
" vmap R "_d

" ********************************************************************
" END OF MAP SECTION
" ********************************************************************


" ********************************************************************
" COMMAND SECTION
" ********************************************************************

command! W w !sudo tee % > /dev/null
nnoremap <silent> ,rs :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" ********************************************************************
" END OF COMMAND SECTION
" ********************************************************************


" ********************************************************************
" GENERAL SECTION
" ********************************************************************

set mouse=a
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" ********************************************************************
" END OF GENERAL SECTION
" ********************************************************************

