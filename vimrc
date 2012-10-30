" Show line numbers
set number
set nocompatible
set vb t_vb=

" Auto filetypes
filetype plugin indent on
set encoding=utf-8

" Auto read when a file is changed
set autoread

" Set 7 line buffer around cursor
set so=7

" Turn off backup/swap files
set nobackup
set nowb
set noswapfile

"" Whitespace
set autoindent
set smartindent
set expandtab
set backspace=indent,eol,start

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"" Searching
set incsearch
set smartcase

colorscheme zenburn
syntax on

" Use j/k for up down navigation in autocomplete
inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
inoremap <expr> k pumvisible() ? "\<C-P>" : "k"

" Turn off arrow keys
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
set mouse=a

" Shows document path and title in the terminal title
set title

" Increase command-t max number of files it will index
let g:CommandTMaxFiles=15000
let g:CommandTCancelMap=['<ESC>','<C-c>']
set wildignore=.git/*,*.zip,*.tar.gz,*.svn,.svn,*.pyc,tmp/*,*.jpg,*.jpeg,*.png,*.gif

" Map <esc> to dismiss command-t
let g:CommandTCancelMap=['<ESC>','<C-c>']

" Command-T ignore
set wildignore=.git/*,*.zip,*.tar.gz,*.svn,.svn,*.pyc,tmp/**,*.jpg,*.jpeg,*.png,*.gif,public/media/**

" Use jquery highlighting for jquery javascript files
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" User c highlighting for Arduino and MPIDE files
au BufRead,BufNewFile *.ino set ft=cpp syntax=cpp tabstop=2 shiftwidth=2
au BufRead,BufNewFile *.pde set ft=cpp syntax=cpp tabstop=2 shiftwidth=2

" Remap commands for when I hold the shift key too long
":command WQ wq
":command Wq wq
":command W w
":command Q q
":command Qa qa

" Pathogen
call pathogen#infect()

" Syntastic

let g:syntastic_check_on_open = 1
let g:syntastic_python_checker = "flake8"
let g:syntastic_python_checker_args = "--ignore=E501"
let g:syntastic_javascript_checker = "jshint"
let g:syntastic_javascript_jshint_conf = $HOME . "/.vim/jshint.json"

" Go language highlighting
au BufRead,BufNewFile *.go set filetype=go
