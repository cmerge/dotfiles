" .vimrc

set nocompatible            " get rid of Vi compatibility mode. SET FIRST!

execute pathogen#infect()
set guifont=Inconsolata\ for\ Powerline:h24
color slate
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
" set guifont=Lucida_Console:h14:cDEFAULT
filetype plugin indent on   " filetype detection[on] plugin[on] indent[on]
syntax enable               " Turn on syntax highlighting
" colorscheme desert          " set colorscheme
inoremap kj <Esc>
nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bp<CR>
nnoremap ; :
nnoremap : ;
vmap <expr>  ++  VMATH_YankAndAnalyse()
nmap         ++  vip++
" set number
set title                   " Put file's name in tab at top of editor window
set nohlsearch              " Don't continue to highlight searched phrases.
set incsearch               " But do highlight as you type your search.
set ignorecase              " Make searches case-insensitive.
set smartcase               " searching for a capital letter forces case sensitivity
set autoindent              " auto-indent
set tabstop=4               " tab spacing
set softtabstop=4           " unify -- I'm not really sure what this does yet
set shiftwidth=4            " indent/outdent by 4 columns
set shiftround              " always indent/outdent to the nearest tabstop
set expandtab               " use spaces instead of tabs
set smarttab                " use tabs at the start of a line, spaces elsewhere
set nowrap                  " don't wrap text
