" --- Plugins ---
call plug#begin('$HOME/Vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'OrangeT/vim-csharp'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-bufferline'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'ctrlpvim/ctrlp.vim'

" -- Colour schemes
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'altercation/vim-colors-solarized'
Plug 'jnurmine/Zenburn'
Plug 'aereal/vim-colors-japanesque'
Plug 'zeis/vim-kolor'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-two-firewatch'
Plug 'nightsense/cosmic_latte'
Plug 'AlessandroYorba/Sierra'
Plug 'KeitaNakamura/neodark.vim'

call plug#end()

" --- Text settings ---
"set guifont=IBM_Plex_Mono:h10:cANSI:qDRAFT
set guifont=M+_1m:h11:cANSI:qDRAFT
"set guifont=Fantasque_Sans_Mono:h11:cANSI:qDRAFT
syntax on

set tabstop=4
set shiftwidth=4
set noexpandtab
set breakindent
set number rnu

" --- GUI options ---
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right hand scroll bar
set guioptions-=L "remove left hand scroll bar
let g:neodark#background = '#202020'

" --- Custom keymaps ---
map <Tab> :bnext<CR>
map <S-Tab> :bprevious<CR>
let g:ctrlp_map = '<c-p>'

" --- Lightline options ---
set laststatus=2
let g:lightline = {
	\ 'colorscheme': 'neodark',
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

" --- Colour scheme ---
set t_Co=256
set background=dark
colorscheme neodark
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

let g:netrw_liststyle = 3
