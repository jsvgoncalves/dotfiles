filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" User defined plugins:
Plugin 'altercation/vim-colors-solarized'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'
" Plugins to test
" easymotion/vim-easymotion
" vim-syntastic/syntastic
" scrooloose/nerdtree
" https://github.com/vim-airline/vim-airline
" https://github.com/Valloric/YouCompleteMe
" https://github.com/christoomey/vim-tmux-navigator
" List:
" https://benmccormick.org/2014/07/21/learning-vim-in-2014-getting-more-from-vim-with-plugins/

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
