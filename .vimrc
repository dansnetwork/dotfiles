set nocompatible
syntax enable

set antialias
set tabstop=4
set shiftwidth=4
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

"auto load changed files
set autoread

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

" put multiple times when in visual mode
vnoremap p "0p 

" use <Leader><Tab> to complete words (same as <C-n>)
function! Tab_Or_Complete()
	if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
		return "\<C-N>"
	else
		return "\<Tab>"
	endif
endfunction
:inoremap <Leader><Tab> <C-R>=Tab_Or_Complete()<CR>

filetype plugin indent on

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set guifont=Menlo\ for\ Powerline:h12

if has("gui_macvim")

	"Splice Settings
	let g:splice_prefix=','
	let g:splice_initial_scrollbind_grid=1
	let g:splice_initial_diff_grid=1

	set background=dark
	colorscheme solarized
endif

if has("autocmd")
  au  BufNewFile,BufRead *.stache set syntax=html
  au  BufNewFile,BufRead *.less set syntax=css
  au  BufNewFile,BufRead *.test set syntax=js
endif
