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
set pastetoggle=<F2>           " Avoid cascading indents when pasting large amounts of text 
set laststatus=2               " Always display the status line.
set statusline=%F%m%r%h%w      " Status line display
set statusline+=\ %{fugitive#statusline()}
set statusline+=\ [line\ %l\/%L] 

filetype plugin indent on

" , the leader character
let mapleader = ","

if &t_Co >= 256 || has("gui_running")
  colorscheme railscasts
endif

if &t_Co > 2 || has("gui_running")
  " switch syntax highlighting on, when the terminal has colors
  syntax on
endif

:nmap <leader>n :NERDTreeToggle<Enter>

" It clears the search buffer
:nmap <leader>/ :nohlsearch<CR> 

" Rspec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "!rspec -fd {spec}"
