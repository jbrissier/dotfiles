

set nocompatible              " be iMproved
filetype off                  " required!

filetype plugin indent on    " required



"basic stuff 
syntax on
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber

set t_Co=256
set background=dark
colorscheme solarized


" auto reload vimrc
augroup myvimrchooks
au!
autocmd bufwritepost .vimrc source ~/.vimrc
augroup END


set encoding=utf-8

"ignore stuff in ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*/node_modules/*,*/site-packages/*

"NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <C-n> :NERDTreeToggle<CR>


" cache ctrl.p stuff
let g:ctrlp_cache_dir = '~/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit=0
" python stuff 
let g:pymode_rope = 0 

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"
" "Linting
let g:pymode_lint = 1
let g:pymode_lint_cwindow = 0
let g:pymode_lint_onfly = 0
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
let g:pymode_lint_on_write = 1
let g:pymode_lint_on_fly = 0
" Ignore useless pep8 rules
let g:pymode_lint_ignore="E501,W391,C0301"

" fixing backspace
:set bs=2

" use mouse 
:set mouse=a

"clipborad osx 
set clipboard+=unnamed

:let mapleader = ","
" save on esc esc
map <Esc><Esc> :w<CR>
:set ic

" window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ctags renaming
nnoremap ü <C-]>
nnoremap Ü <C-O>
let g:indentLine_char = '|'
