" Use Vim settings instead of Vi
set nocompatible

" Enable syntax hilighting
syntax on

" Fix the backspace key
set backspace=indent,eol,start

" Show cursor position
set ruler

" Show the command in the bottom right
set showcmd

" Show the current mode
set showmode

" Make it place nice with standards
set shiftwidth=4
set tabstop=4
set smartindent
set nu

" 256 color terminal
set t_Co=256

" Sets the terminal title
set title

" Can use the mouse
if has('mouse')
	set mouse=a
endif
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

filetype plugin indent on

if has("gui_running")
	colorsheme slate
endif

" Taglist variables
let Tlist_Auto_Open=1
let Tlist_Use_Horiz_Window=1
let Tlist_Exit_OnlyWindow=1

" Taglist mapping
map <F8> :TlistToggle<CR>

" Pydiction
let g:pydiction_location = '/home/dignan/Downloads/pydiction/pydiction-1.2/complete-dict'

" Start NERDTree
autocmd VimEnter * NERDTreeToggle | :silent NERDTreeMirror
autocmd VimEnter * wincmd p

" NERDTree Mapping
map <F5> :NERDTreeToggle \| :silent NERDTreeMirror<CR>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Map W (caps) to write
cmap W w

autocmd FileType make set noet
autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.html set shiftwidth=2
autocmd BufRead *.html set tabstop=2
autocmd BufRead .vimrc source $MYVIMRC
au BufRead,BufNewFile *.vala            setfiletype vala
au BufRead,BufNewFile *.vapi            setfiletype vala

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set noet
