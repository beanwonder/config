"================================================ 
" Beanwonder's Configuration file for vim       =
" File:.vimrc                                   =
" Author:beanwonder                             =
" Email:bingwonder@gmail.com                    =
"================================================


""""""""""""""""""""""""""""""""""""""""""""""
" =>        config for vundle                "
""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" Color
Plugin 'altercation/vim-colors-solarized'
" Syntax
" Install garbas/vim-snipmate dependencies:
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" Plugin
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'chrisbra/NrrwRgn'
Plugin 'Raimondi/delimitMate'
Plugin 'myusuf3/numbers.vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'beanwonder/google_python_style'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'roman/golden-ratio'
Plugin 'powerline/fonts'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
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
let g:ycm_path_to_python_interpreter = ''

" set for solarized menu
let g:solarized_menu = 0

" set numbers.vim
nnoremap <F2> :NumbersToggle<CR>
let g:numbers_exclude = ['nerdtree']

" vim-airline
" set air-line
set laststatus=2

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1

" let g:airline_theme='bubblegum'
let g:airline_theme='base16'
"  let g:airline_theme='laederon'
" let g:airline_theme='tomorrow'
" let g:airline_theme='light'
" let g:airline_theme='solarized'
"  let g:airline_enable_syntstic = 1
"  let g:girline_enable_branch = 1
"  let g:airline_exclude_npreview = 1
"  set noshowmode
"  let g:bufferline = 0
" let g:airline_detect_whitespace = 0

" let g:airline_left_sep = '>'
" let g:airline_right_sep = '<'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
