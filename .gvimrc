set nocompatible
set transparency=5

set antialias
set tabstop=4
set shiftwidth=4
set nowrap

call pathogen#infect()
syntax on
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
colorscheme vividchalk

