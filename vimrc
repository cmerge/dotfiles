" .vimrc


filetype off
execute pathogen#infect()
filetype plugin indent on   " filetype detection[on] plugin[on] indent[on]
set nocompatible            " get rid of Vi compatibility mode. SET FIRST!

color slate

" set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2


set guifont=Inconsolata\ for\ Powerline:h24
let g:Powerline_symbols = 'fancy'
let g:Powerline_cache_enabled = 1
let g:Powerline_colorscheme = 'badwolf'

set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮

let g:airline_powerline_fonts = 1

" set guifont=Lucida_Console:h14:cDEFAULT
syntax enable               " Turn on syntax highlighting
set background=dark         " this is a solarized colorscheme setting
colorscheme desert       " was solarized
inoremap kj <Esc>
nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bp<CR>
nnoremap ; :
nnoremap : ;
map H ^
map L $
vmap <expr> ++ VMATH_YankAndAnalyse()
nmap        ++ vip++

" Keep search matches in the middle of the window and pulse the line when
" moving to them.
nnoremap n nzzzv
nnoremap N Nzzzv

" Quick editing
nnoremap <leader>ev :e ~/dotfiles/vimrc<cr>

" Open/Close a vertical split and put the cursor in it.
nnoremap <leader>w <C-w>v<C-w>li
nnoremap <leader>c <C-w>c

" Jumping between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Change case
nnoremap <C-u> gUiw
inoremap <C-u> <esc>gUiwea

" Substitute
nnoremap <leader>s :%s//<left>

" Zip Right
"
" Moves the character under the cursor to the end of the line.  Handy when you
" have something like:
"
"     foo
"
" And you want to wrap it in a method call, so you type:
"
"     println()foo
"
" Once you hit escape your cursor is on the closing paren, so you can 'zip' it
" over to the right with this mapping.
"
" This should preserve your last yank/delete as well.
nnoremap zl :let @z=@"<cr>x$p:let @"=@z<cr>

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
