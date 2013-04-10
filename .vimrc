set nocompatible

set antialias
set tabstop=4
set nowrap

call pathogen#infect()

set cursorline
set number

set autoindent

set smartindent

set hlsearch
set incsearch

set nobackup
set noswapfile
set foldcolumn=2
set foldmethod=indent
set foldnestmax=2

let mapleader=','
let maplocalleader=','

inoremap jk <esc>

nnoremap <silent> FF :FufCoverageFile<CR>

nnoremap <silent> H <C-w>h
nnoremap <silent> L <C-w>l
nnoremap <silent> K <C-w>k
nnoremap <silent> J <C-w>j

nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" in visual mode, '*' will search for the selected contents (there may be regex issues)
vnoremap * y<C-U>/\V<C-r>"<cr>

" in visual/normal mode, '**' will begin an 'Ack' search (there may be regex issues)
vnoremap ** y<c-u>:Ack <c-r>" --
nnoremap ** :Ack <c-r><c-w> --

nnoremap <leader>a :Ack 

" use <Leader><Tab> to complete words (same as <C-n>)
function! Tab_Or_Complete()
	if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
		return "\<C-N>"
	else
		return "\<Tab>"
	endif
endfunction
:inoremap <Leader><Tab> <C-R>=Tab_Or_Complete()<CR>

filetype on
filetype plugin on
"filtype plugin indent on
"let g:snippets_dir='~/.vim/bundle/snipmate.vim/snippets'

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

"Powerline
"let g:Powerline_symbols='fancy'

"colorscheme molokai 
"syntax enable
"set background=dark
"colorscheme solarized

