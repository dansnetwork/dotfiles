set nocompatible
"set transparency=5

set antialias
set tabstop=4
set shiftwidth=4
set nowrap

call pathogen#infect()
"syntax on
filetype plugin indent on

set cursorline
set number

set autoindent

set smartindent

set hlsearch
set incsearch

set nobackup
set noswapfile

"auto load changed files
set autoread

if has("autocmd")
  au  BufNewFile,BufRead *.stache set syntax=html
  au  BufNewFile,BufRead *.less set syntax=css
  au  BufNewFile,BufRead *.test set syntax=js
endif

"set foldcolumn=2
"set foldmethod=indent

inoremap ;; <esc>
"noremap <c-tab> :tabnext<cr>
"noremap <c-s-tab> :tabprev<cr>

"fuzzyfinder map command+T
"if has("gui_mac") || has("gui_macvim")
 " macmenu &File.New\ Tab     key=<Nop>
  "map <silent><D-t> :FufFile **/<CR>
"endif


"colorscheme molokai 
"colorscheme vividchalk

"Splice Settings
let g:splice_prefix=','
let g:splice_initial_scrollbind_grid=1
let g:splice_initial_diff_grid=1

"let mapleader=","
"let maplocalleader=","
syntax enable
set background=dark
colorscheme solarized
set guifont=Menlo\ for\ Powerline:h12
