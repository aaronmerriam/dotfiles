" Show line numbers
set number
set nocompatible
set vb t_vb=

" Encoding
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

" Use j/k for up down navigation in autocomplete
inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
inoremap <expr> k pumvisible() ? "\<C-P>" : "k"

" Turn off arrow keys
"inoremap <Up> <NOP>
"inoremap <Down> <NOP>
"inoremap <Left> <NOP>
"inoremap <Right> <NOP>
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>
" Enable sane highlighting
set mouse=a
" Enable copying with ctrl-c whil in visual mode
vmap <C-C> "+y

" Shows document path and title in the terminal title
set title


" Increase command-t max number of files it will index
"let g:CommandTMaxFiles=15000
"let g:CommandTCancelMap=['<ESC>','<C-c>']
" Command-T ignore
set wildignore=.git/*,*.zip,*.tar.gz,*.svn,.svn,*.pyc,tmp/**,*.jpg,*.jpeg,*.png,*.gif,**/public/media/**,**/public/static/**,backups/**,**/_build/**,**/build/**,**/node_modules/**,tmp/**,.hypothesis/**,.tox/**,**/logs/**
" Map <esc> to dismiss command-t
"let g:CommandTCancelMap=['<ESC>','<C-c>']

" CTRLP
let g:ctrlp_map = '<leader>t'
set runtimepath^=~/.vim/bundle/ctrlp.vim
"let g:ctrlp_show_hidden = 1
"let g:ctrlp_custom_ignore='node_modules\|.git'

" Use jquery highlighting for jquery javascript files
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" User c highlighting for Arduino and MPIDE files
au BufRead,BufNewFile *.ino set ft=cpp syntax=cpp tabstop=2 shiftwidth=2
au BufRead,BufNewFile *.pde set ft=cpp syntax=cpp tabstop=2 shiftwidth=2
au BufRead,BufNewFile *.yaml set ft=yaml syntax=yaml tabstop=2 shiftwidth=2
au BufRead,BufNewFile *.yml set ft=yaml syntax=yaml tabstop=2 shiftwidth=2
au BufRead,BufNewFile *.rb set ft=ruby syntax=ruby tabstop=2 shiftwidth=2
au BufRead,BufNewFile *.erb set ft=ruby syntax=ruby tabstop=2 shiftwidth=2
au BufRead,BufNewFile *.html set tabstop=2 shiftwidth=2
au BufRead,BufNewFile *.sol set ft=solidity syntax=solidity tabstop=4 shiftwidth=4

" Remap commands for when I hold the shift key too long
":command WQ wq
":command Wq wq
":command W w
":command Q q
":command Qa qa

" Pathogen
execute pathogen#infect()
" Auto syntax highlighting (pathogen)
syntax on
" Auto filetypes (pathogen)
filetype plugin indent on

" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = "--ignore=E501"
let g:syntastic_python_pylint_args = "--disable=C0111 --disable=W0142 --disable=E1101 --generated-members=objects --disable=C0103 --disable=W0613"
let g:syntastic_javascript_checkers = "eslint"
"let g:syntastic_javascript_jshint_args = '--config /Users/piper/.vim/jshint.json'

" Go language highlighting
au BufRead,BufNewFile *.go set filetype=go

" Remove trailing whitespace on save
autocmd BufWritePre *.py :%s/\s\+$//e

" Disable folding in markdown files
let g:vim_markdown_folding_disabled=1

" Disable folding of javascript
let b:javascript_fold=0

" Teach jshint how to find the local `.jshintrc` file.
function s:find_jshintrc(dir)
    let l:found = globpath(a:dir, '.jshintrc')
    if filereadable(l:found)
        return l:found
    endif

    let l:parent = fnamemodify(a:dir, ':h')
    if l:parent != a:dir
        return s:find_jshintrc(l:parent)
    endif

    return "~/.jshintrc"
endfunction

function UpdateJsHintConf()
    let l:dir = expand('%:p:h')
    let l:jshintrc = s:find_jshintrc(l:dir)
    let g:syntastic_javascript_jshint_conf = l:jshintrc
endfunction

au BufEnter * call UpdateJsHintConf()

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Use system clipboard for everything
set clipboard=unnamed " Default to system clipboard.

"This allows for change paste motion cp{motion}
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction
