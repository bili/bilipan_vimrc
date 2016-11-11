" set key map (leader)
let mapleader=','

" zf
" set fdm=indent
" au BufWinLeave * mkview
" au BufWinEnter * silent loadview

" auto save status of last editor
" au BufWinLeave * mksession wk.vim
" auto bufread *.vimwk :so %

" Backup
" if has("vms") 
set nobackup " do not keep a backup file, use versions instead 
" else 
" set backup " keep a backup file 
" endif
set noswapfile
set noundofile
" Change to directory where current file exists automatically
set autochdir

""""""""""""""""""""""""""""""""""""" File encoding """"""""""""""""""""""""""""""""""""""""

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
if has('win32')
    set fileencoding=chinese
else
    set fileencoding=utf8
endif
set fenc=utf-8

" Menu messy code
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set ambiwidth=double
language messages zh_CN.UTF-8

" Set shellcmdflag=-c

""""""""""""""""""""""""""""""""" Window & Tab styles """"""""""""""""""""""""""""""""""""""""""

set go=
" Show position
set ruler
" Tabbar is always visible even when only one tab exists.
" If not, set showtabline=1
set showtabline=2

set lines=45 columns=145
"colo srcery
"colo base16-atelierforest
colo soda
" Set guifont=Menlo:h11
set guifont=Consolas:h9:cEASTEUROPE
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
" Set number line 
set nu

" Ignore case when searching
set ignorecase
set hlsearch
" 开启实时搜索功能
set incsearch
" Highlight current row
set cursorline

"""""""""""""""""""""""""""""""""""" Bundle Plugins """""""""""""""""""""""""""""""""""""

" Vim plugins manager--bundle
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" User bundles
" 文件树
Bundle 'scrooloose/nerdtree'
" 注释
Bundle 'scrooloose/nerdcommenter'
" 快速 html coding
Bundle 'mattn/emmet-vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" 插件优化
Bundle 'xolox/vim-misc'
" 主题切换
Bundle 'xolox/vim-colorscheme-switcher'
" 任务管理
Bundle 'aaronbieber/vim-quicktask'
" 窗口管理
"Bundle 'spolu/dwm.vim'
" 垂直缩进对齐线
Bundle 'nathanaelkane/vim-indent-guides'
" 字体大小切换
Bundle 'thinca/vim-fontzoom'
" 防分心窗口
Bundle 'junegunn/goyo.vim'
" original repos on GitHub
" Git
Bundle 'tpope/vim-fugitive'
" 快速跳转
Bundle 'Lokaltog/vim-easymotion'
" Ruby
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
" non-GitHub repos
Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
"
"
"""""""""""""""""""""""""""""""""""" Themes """"""""""""""""""""""""""""""""""""""""""
Bundle 'ryanpcmcquen/true-monochrome_vim'
Bundle 'roosta/vim-srcery'
Bundle 'GGalizzi/cake-vim'
Bundle 'vim-scripts/proton'
Bundle 'DAddYE/soda.vim'
Bundle 'nice/sweater'
Bundle 'romainl/flattened'
Bundle 'acarapetis/vim-colors-github'
Bundle 'atelierbram/vim-colors_atelier-schemes'

"""""""""""""""""""""""""""""""""""" Mapping """""""""""""""""""""""""""""""""""""""""""""""""

" set iabbrev
" iab sea define(function(require, exports, module) {<return>});<esc>O<c-d>
" iab todo // @TODO:<esc><c-d>a
" Select current word
nnoremap <space> viw
" Open Navigator
nnoremap <silent> <F5> :NERDTree<CR>
" No highlight
nnoremap <A-h> <Esc>:nohl<CR>
" Open right scrollbar
nnoremap <A-r> <Esc>:set go=r<CR>
" Close all visible menu
nnoremap <A-R> <Esc>:set go=<CR>
" CD to folder where current editting file located: ,,
" nnoremap <silent> <leader>, :cd %:p:h<CR>
" Change tabs
nnoremap <A-j> gT
nnoremap <A-k> gt
"Jump windows
nnoremap <A-left> <Esc><C-w>h
nnoremap <A-right> <Esc><C-w>l
nnoremap <A-up> <Esc><C-w>k
nnoremap <A-down> <Esc><C-w>j
" Remove all empty lines
nnoremap <F2> :g/^\s*$/d<CR>
" Eneter distraction mode
nnoremap <F9> :Goyo<CR>
