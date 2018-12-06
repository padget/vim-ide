set nocompatible      
filetype off          

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'  " Nécessaire
Plugin 'scrooloose/nerdtree'
Plugin 'mikelue/vim-maven-plugin'

call vundle#end()            " Nécessaire
filetype plugin indent on    " Nécessaire

set number
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent
set hlsearch

autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
