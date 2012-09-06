" Nathan's .vimrc file

" Basics so vim works
set nocompatible
set backspace=2
set autochdir " automatically change current directory
set nohidden  " remove buffer of closed tabs
set paste     " sane pasting

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
colorscheme desert

" Look for tags in parent directories
set tags=tags;/
