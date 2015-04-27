

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
" required! 

Bundle 'gmarik/Vundle'
Bundle 'Python-mode-klen'
Bundle 'ctrlp.vim'
"Bundle 'plasticboy/vim-markdown'
Bundle 'davidhalter/jedi-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'chase/vim-ansible-yaml'
Bundle 'tpope/vim-fugitive'
Bundle 'ervandew/supertab'
Bundle 'fatih/vim-go'
":Bundle 'nerdtree-ack'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



"basic stuff 
syntax on
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

color solarized


" auto reload vimrc
augroup myvimrchooks
au!
autocmd bufwritepost .vimrc source ~/.vimrc
augroup END


set encoding=utf-8

"ignore stuff in ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

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
let g:pymode_lint_on_write = 0
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

" Mappings {{{
"   " Unbind the cursor keys in insert, normal and visual modes.
       for prefix in ['i', 'n', 'v']
          for key in ['<Up>', '<Down>', '<Left>', '<Right>']
              exe prefix . "noremap " . key . " <Nop>"
               endfor
          endfor
