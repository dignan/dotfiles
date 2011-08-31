" Use Vim settings instead of Vi
set nocompatible

" Required for vundle
filetype on
filetype off

" Vundle stuff
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'pyflakes.vim'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'colorsupport.vim'
Bundle 'python.vim'
Bundle 'https://github.com/altercation/vim-colors-solarized.git'
Bundle 'taglist.vim'
Bundle 'https://github.com/kchmck/vim-coffee-script.git'
Bundle 'desert256.vim'
Bundle 'inkpot'

filetype plugin indent on
