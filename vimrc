"================================================ 
" Beanwonder's Configuration file for vim       =
" File:.vimrc                                   =
" Author:beanwonder                             =
" Email:bingwonder@gmail.com                    =
"================================================


""""""""""""""""""""""""""""""""""""""""""""""
" =>        config for vundle                "
""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               " be iMproved
filetype off  	               " required!

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" Color
Bundle 'altercation/vim-colors-solarized'

" Syntax
" Install garbas/vim-snipmate dependencies:
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'

" YouCompleteMe
Bundle 'Valloric/YouCompleteMe'

" vim-scripts repos
"Bundle 'L9'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...
" Plugin
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'Yggdroot/indentLine'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'godlygeek/tabular'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'chrisbra/NrrwRgn'
Bundle 'Raimondi/delimitMate'
Bundle 'myusuf3/numbers.vim'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'beanwonder/google_python_style'
Bundle 'terryma/vim-multiple-cursors'
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""


"--------------------------------------------
" => My General Vim Config                  -
"--------------------------------------------
syntax on
set number
set history=500
set hlsearch			"high light search result
set noswapfile			"no .swp file
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"set ruler

" indent
set autoindent
"set cindent
set smarttab
set smartindent

" set tap = 8' '
set tabstop=8
set expandtab
" shiftwith
set shiftwidth=8
" softtabstop
set softtabstop=8
" for python cpp java set
au FileType python,cpp,java,ruby setlocal tabstop=4 shiftwidth=4 softtabstop=4
set foldmethod=syntax           "代码折叠
"

" ---------------------------------------------
"  => SET FOR PLUGINS                         -
" ---------------------------------------------
"set for ctags dir
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_width = 20
let NERDTreeWinSize = 20

" youcompleteme key set
let g:ycm_key_list_select_completion = ['<C-j>']
let g:ycm_key_list_previous_completion = ['<C-k>']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_path_to_python_interpreter = '/usr/bin/python'

" set for solarized menu
let g:solarized_menu = 0

" set air-line
set laststatus=2
" let g:airline_powerline_fonts = 1

" set numbers.vim
nnoremap <F2> :NumbersToggle<CR>
let g:numbers_exclude = ['nerdtree']

" vim-airline
" 状态栏插件，更好的状态栏效果
let g:airline_theme='laederon'
"  let g:airline_theme='tomorrow'
"  let g:airline_theme='luna'
"  let g:airline_theme='solarized'
"  let g:airline_theme='badwolf'
"  let g:airline_theme = 'powerlineish'
let g:airline_theme = 'bubblegum'
"  let g:airline_enable_syntstic = 1
"  let g:girline_enable_branch = 1
"  let g:airline_exclude_npreview = 1
"  set noshowmode
"  let g:bufferline = 0
let g:airline_detect_whitespace = 0
