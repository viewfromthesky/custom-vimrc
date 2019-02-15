call plug#begin('$HOME/Vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'OrangeT/vim-csharp'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-bufferline'
Plug 'vim-scripts/AutoComplPop'

" Colour schemes
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

call plug#end()

set guifont=IBM_Plex_Mono:h10:cANSI:qDRAFT
syntax on

set tabstop=4
set shiftwidth=4
set noexpandtab
set breakindent
set number

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
