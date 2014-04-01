

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 

Bundle 'gmarik/vundle'
Bundle 'Python-mode-klen'
Bundle 'ctrlp.vim'

Bundle 'davidhalter/jedi-vim'
"Bundle 'scrooloose/nerdtree'

":Bundle 'nerdtree-ack'

"basic stuff 
syntax on
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" auto reload vimrc
augroup myvimrchooks
au!
autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

"ignore stuff in ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc


let g:pymode_rope = 0 

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"
" "Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" " Auto check on save
let g:pymode_lint_write = 1
"
" " Support virtualenv
let g:pymode_virtualenv = 1
"
" " Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
"
" " syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
" " Don't autofold code
let g:pymode_folding = 0
" Ignore useless pep8 rules
let g:pymode_lint_ignore="E501,W391"

