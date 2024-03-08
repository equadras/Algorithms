call plug#begin()
Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.7' }
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'crusoexia/vim-monokai'
Plug 'tomasr/molokai'
Plug 'luochen1990/rainbow'
Plug 'ayu-theme/ayu-vim' " or other package manager

" Initialize plugin system
call plug#end()

"...
set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
"
colorscheme ayu

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle


set nocompatible
filetype on
syntax on
filetype plugin indent on
set number
set relativenumber
set encoding=utf-8

set wrap
set textwidth=80
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

autocmd filetype cpp nnoremap <F2> :r /home/ema/testcase1.cpp <Return> kdd :14 <Return> o
"map <F9> :!g++ -g % -o %:r && ./%:r <CR>
map <F9> :!g++ -std=c++20 -O2 -DLOCAL_DEBUG -Wall -Wextra -Wconversion -Wfatal-errors -fsanitize=address,undefined -o  -g % -o %:r  && ./%:r <CR>
map <F5> :!g++ -std=c++20 -O2 -Wall -Wextra -Wconversion -Wfatal-errors -fsanitize=address,undefined -o  -g % -o %:r <CR>
map <F1> :w <CR>
map <F12> :!gdb ./%:r <CR>



" Map a key to trigger the compilation
nnoremap <F8> :call CompileCpp()<CR>




