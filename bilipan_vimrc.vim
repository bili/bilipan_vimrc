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


""""""""""""""""""""""""""""""""""""""""" Window & Tab styles """"""""""""""""""""""""""""""""""""""""""
set go=
" Show position
set ruler
" Tabbar is always visible even when only one tab exists.
" If not, set showtabline=1
set showtabline=2

set lines=35 columns=120
colo srcery
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
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'mattn/emmet-vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-colorscheme-switcher'
Bundle 'aaronbieber/vim-quicktask'
Bundle 'spolu/dwm.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'ryanpcmcquen/true-monochrome_vim'
Bundle 'thinca/vim-fontzoom'
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
" non-GitHub repos
Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""" Mapping """""""""""""""""""""""""""""""""""""""""""""""""
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
nnoremap <silent> <leader>, :cd %:p:h<CR>
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
