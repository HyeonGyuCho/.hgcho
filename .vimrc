"vim personal configure
set number
set si
set cindent
set ignorecase
set hlsearch
set background=dark
colorscheme elflord 
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
set tags=./tags,tags

set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

"remember pervious position
au BufRead *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\    exe "norm g'\"" |
\ endif
