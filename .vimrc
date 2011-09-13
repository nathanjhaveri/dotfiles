" Nathan's .vimrc file

" Basics so vim works
set nocompatible
set backspace=2
" remove buffer of closed tabs
set nohidden

" Whitespace options
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set list listchars=tab:→\ ,trail:·

" Search options
set incsearch
set ignorecase
set smartcase
set hlsearch

" UI options 
syntax on
set ruler
set number
colorscheme slate

" Look for tags in parent directories
set tags=tags;/
