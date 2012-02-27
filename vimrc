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


"" Lint / Syntax highlighting
""set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
""set statusline+=%*


"" Searching
set incsearch
set smartcase

colorscheme zenburn
syntax on
inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
inoremap <expr> k pumvisible() ? "\<C-P>" : "k"
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
:command WQ wq
:command Wq wq
:command W w
:command Q q
set title
let g:CommandTMaxFiles=15000
set wildignore=.git/*,*.zip,*.tar.gz,*.svn,.svn,*.pyc,tmp/*,*.jpg,*.jpeg,*.png,*.gif
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
