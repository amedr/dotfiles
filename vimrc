" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nocompatible               " Use Vim settings, rather then Vi settings
set nobackup                   " No backup file
set noswapfile                 " No backup file
set history=1000               " remember more commands and search history
set undolevels=1000            " use many muchos levels of undo
set title                      " change the terminal's title
set visualbell                 " don't beep
set noerrorbells               " don't beep
set nowrap                     " don't wrap lines
set tabstop=2                  " a tab is four spaces
set expandtab
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent                 " always set autoindenting on
set copyindent                 " copy the previous indentation on autoindenting
set number                     " always show line numbers
set shiftwidth=2               " number of spaces to use for autoindenting
set shiftround                 " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                  " set show matching parenthesis
set ignorecase                 " ignore case when searching
set smartcase                  " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab                   " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch                   " highlight search terms
set incsearch                  " show search matches as you type

filetype plugin indent on

" , the leader character
let mapleader = ","

if &t_Co > 2 || has("gui_running")
  syntax on
  colorscheme hemisu
endif

:nmap <leader>n :NERDTreeToggle<Enter>
