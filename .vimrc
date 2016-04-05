"vim personal configure
set number
set si
set cindent
set ignorecase
set hlsearch
set background=dark
colorscheme evening
set ruler
set title
set wrap
set expandtab ts=4 sw=4
set hls 
set ic
set lbr 
set ruler
set wmnu
set cursorline
set showmatch
set showcmd
set mouse=a
highlight CursorLine term=bold cterm=bold guibg=Grey40
syntax on

"remember pervious position
au BufRead *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\    exe "norm g'\"" |
\ endif


"VIM Plugin
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
call vundle#end()            " required
filetype plugin indent on    " required

"NERD-Tree
Plugin 'The-NERD-Tree'
let NERDChrismastree = 1
let NERDTreeMouseMode = 2
map <F7> :NERDTreeToggle ./<CR>

"vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
