"set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=$HOME/Vim/vimfiles/bundle/Vundle.vim/
"call vundle#begin('$HOME/Vim/vimfiles/bundle/')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" Airline
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

"Plugin 'itchyny/lightline.vim'

"Plugin 'scrooloose/nerdtree'
"Plugin 'mattn/emmet-vim'
"Plugin 'OrangeT/vim-csharp'
"Plugin 'bling/vim-bufferline'
"Plugin 'othree/html5.vim'
"Plugin 'tpope/vim-fugitive' 
"Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'vim-scripts/AutoComplPop'

"Plugin 'flazz/vim-colorschemes'
"Plugin 'kyoh86/momiji'
"Plugin 'shinchu/lightline-gruvbox.vim'
"Plugin 'patstockwell/vim-monokai-tasty'

"call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

call plug#begin('$HOME/Vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'OrangeT/vim-csharp'
Plug 'bling/vim-bufferline'
Plug 'vim-scripts/AutoComplPop'

" Colour schemes
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

call plug#end()

"source $VIMRUNTIME/vimrc_example.vim

set guifont=IBM_Plex_Mono:h10:cANSI:qDRAFT
syntax on

set tabstop=4
set shiftwidth=4
set noexpandtab
set breakindent

set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right hand scroll bar
set guioptions-=L "remove left hand scroll bar

map <F9> :NERDTreeToggle<CR>
map <F10> :NERDTreeFocus<CR>
map <Tab> :bnext<CR>
map <S-Tab> :bprevious<CR>

set laststatus=2
let g:lightline = {
	\ 'colorscheme': 'challenger_deep',
	\ 'active': {
	\	'left': [ [ 'mode', 'paste' ], 
	\			  [ 'fugitive', 'filename', 'modified' ] ],
	\ },
	\ 'component_function': {
	\ 	'fugitive': 'fugitive#statusline'
	\ },
	\ }

set t_Co=256
set background=dark
colorscheme challenger_deep
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
