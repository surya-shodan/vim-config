" Instruction to refer to vim-plug plugin manager
call plug#begin('~/.vim/plugged_extensions')

" List the plugins, with github shorthand version [author/gitrepo]
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-commentary'
Plug 'flazz/vim-colorschemes'
Plug 'https://github.com/vim-python/python-syntax'
Plug 'brooth/far.vim'
Plug 'https://github.com/tpope/vim-rhubarb.git'
Plug 'w0rp/ale'
Plug 'mhinz/vim-startify'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/vim-easy-align'
Plug 'plytophogy/vim-virtualenv'


" Plug 'https://www.github.com/nvie/vim-flake8.git'
" Plug 'python-mode/python-mode'
" Plug 'hdima/python-syntax'
" End the begin section of vim-plug
call plug#end()

"""

" Python specific configuration
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
set colorcolumn=80

" let python_highlight_all = 1
let g:python_highlight_all = 1

" Code Fold Settings
" set foldmethod=indent
" set foldlevel=1
" set foldclose=all

" NERDTree configuration
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" colorscheme / Visual config
set background=dark
set t_Co=256

" colorscheme molokai 
colorscheme Benokai

" Airline Theme
let g:airline_theme='wombat'

" Misc Startup Scripts
autocmd BufEnter __run__,__doc__ :wincmd L

" Set line number
set number
set relativenumber

"Set Leader Key
let mapleader="<Space>"
set showcmd

" Settings for jedi-vim
let g:jedi#popup_on_dot=0

" ALE Config
let g:ale_linters = {
\   'python': ['pylint'],
\}
let g:ale_fixers = ['autopep8']
" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0

" Set Indent markers
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size            = 1
let g:indent_guides_start_level           = 2

" EasyAlign Plugin
"   Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"   Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
