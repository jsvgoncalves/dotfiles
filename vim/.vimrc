set nocompatible              " be iMproved, required

source ~/.vim/plugins.vim

let mapleader = ','
set backspace=indent,eol,start
set incsearch
set hlsearch
set cursorline
set number

syntax on
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized

hi LineNr ctermbg=bg
hi vertsplit ctermfg=bg ctermbg=bg

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow				" Default is up and left.
set splitright

set foldmethod=indent
set foldlevel=99
nnoremap <space> za 			" Enable folding with the spacebar

" remove whitespace from tex and py files
autocmd FileType tex,py autocmd BufWritePre <buffer> %s/\s\+$//e

nmap <Leader>ev :tabe $MYVIMRC<cr>
nmap <Leader>sv :so $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>tl :set background=light<cr>:hi LineNr ctermbg=bg<cr>
nmap <Leader>td :set background=dark<cr>:hi LineNr ctermbg=bg<cr>
