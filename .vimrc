set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
    Plug 'nanotech/jellybeans.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'klen/python-mode'
    Plug 'plasticboy/vim-markdown'
call plug#end()

set hlsearch
set nu
set autoindent
set scrolloff=2
set wildmode=longest,list
set ts=4
set sts=4
set sw=1
set autowrite
set autoread
"set cindent
set bs=eol,start,indent
set history=256
set laststatus=2
set shiftwidth=4
set showmatch
set smartcase
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set expandtab
set ruler
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

au BufReadPost *
\ if line("'\"")>0 && line("'\"") <=line("$") |
\ exe "norm g`\"" |
\ endif

if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif

if has("syntax")
 syntax on
endif

colorscheme jellybeans

map <F7> mzgg=G`z

hi Normal ctermbg=none
hi LineNr ctermbg=none
hi NonText ctermbg=none


