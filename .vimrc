
set nocompatible	" vundle required
filetype off		" vundle required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  Plugin 'preservim/nerdtree'
  Plugin 'itchyny/lightline.vim'
  Plugin 'morhetz/gruvbox'
call vundle#end()

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" enable syntax highlighting
syntax on

set noswapfile

" Press [shift] while selecting with the mouse if you want to use
" mouse to interact with terminal
set mouse=a

" nerdtree
map <F2> :NERDTreeToggle<CR>

" lightline
set laststatus=2

" gruvbox
colorscheme gruvbox
set bg=dark

" use backspace
set backspace=2

" searching
set hlsearch			" enable search highlighting
set ignorecase			" ignore case when searching

" default indentations
set shiftwidth=4		" # of spaces to use for each step of (auto) indent
set tabstop=4			" # of spaces that a tab in the file counts for
set expandtab			" use the appropriate number of spaces to insert a tab

" miscs
set number			" show line numbers on the left
set autoread			" automatically refresh files if unmodified inside vim
set encoding=utf-8		" use an encoding that supports unicode
set history=256			" increase the undo limit
