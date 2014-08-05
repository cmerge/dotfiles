" .vimrc

set nocompatible            " get rid of Vi compatibility mode. SET FIRST!
filetype plugin indent on   " filetype detection[on] plugin[on] indent[on]
syntax enable               " Turn on syntax highlighting
colorscheme desert          " set colorscheme
set number
set title                   " Put file's name in tab at top of editor window
:imap kj <Esc>              " Map <ESC> to 'kj'
nnoremap <C-Tab> :bn<CR>    " Mappings for switching buffers
nnoremap <C-S-Tab> :bp<CR>  " ---
nnoremap ; :
nnoremap : ;
vmap <expr>  ++  VMATH_YankAndAnalyse()
nmap         ++  vip++
set nohlsearch              " Don't continue to highlight searched phrases.
set incsearch               " But do highlight as you type your search.
set ignorecase              " Make searches case-insensitive.
set autoindent              " auto-indent
set tabstop=4               " tab spacing
set softtabstop=4           " unify -- I'm not really sure what this does yet
set shiftwidth=4            " indent/outdent by 4 columns
set shiftround              " always indent/outdent to the nearest tabstop
set expandtab               " use spaces instead of tabs
set smarttab                " use tabs at the start of a line, spaces elsewhere
set nowrap                  " don't wrap text
