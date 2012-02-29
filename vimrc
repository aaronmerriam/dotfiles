set number
set nocompatible
set vb t_vb=
filetype plugin indent on
set encoding=utf-8

"" Colemak
"noremap n j|noremap <C-w>n <C-w>j|noremap <C-w><C-n> <C-w>j
"noremap e k|noremap <C-w>e <C-w>k|noremap <C-w><C-e> <C-w>k
"noremap s h
"noremap t l
"
"noremap f e
"noremap k n
"noremap K N 
"noremap U <C-r>
"
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
"cnoreabbrev W w
"cnoreabbrev Q q

" Remap commands for when I hold the shift key too long
:command WQ wq
:command Wq wq
:command W w
:command Q q
:command Qa qa

" Shows document path and title in the terminal title
set title

" Increase command-t max number of files it will index
let g:CommandTMaxFiles=15000
set wildignore=.git/*,*.zip,*.tar.gz,*.svn,.svn,*.pyc,tmp/*,*.jpg,*.jpeg,*.png,*.gif

" Use jquery highlighting for jquery javascript files
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
