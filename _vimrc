call plug#begin('$HOME/Vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'OrangeT/vim-csharp'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-bufferline'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'ctrlpvim/ctrlp.vim'

" Colour schemes
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'altercation/vim-colors-solarized'
Plug 'jnurmine/Zenburn'

call plug#end()

set guifont=IBM_Plex_Mono:h10:cANSI:qDRAFT
syntax on

set tabstop=4
set shiftwidth=4
set noexpandtab
set breakindent
set number rnu

set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right hand scroll bar
set guioptions-=L "remove left hand scroll bar

map <Tab> :bnext<CR>
map <S-Tab> :bprevious<CR>

let g:ctrlp_map = '<c-p>'

set laststatus=2
let g:lightline = {
	\ 'colorscheme': 'seoul256',
	\ 'active': {
	\	'left': [ [ 'mode', 'paste' ], 
	\			  [ 'filename' ] ],
	\ },
	\ 'component_function': {
	\ 	'filename': 'LightlineFilename'
	\ },
	\ }

function! LightlineFilename()
	let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
	let modified = &modified ? '+' : ''
	return filename . modified
endfunction

set t_Co=256
set background=dark
colorscheme zenburn
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
let g:netrw_liststyle = 3
