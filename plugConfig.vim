
call plug#begin('~/.vim/plugged')
" Syntax
Plug 'sheerun/vim-polyglot'



" Temas
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" Tree
Plug 'scrooloose/nerdtree'

" Typeo
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" Tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'

" Autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Tests
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

"IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'

" StatusBar
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'


" Languajes Support
Plug 'pangloss/vim-javascript' " JavaScript Support

" GIT
Plug 'tpope/vim-fugitive'


Plug 'tpope/vim-repeat' 

call plug#end()

" coc 
let g:coc_global_extension = [ 'coc-tsserver' ]

" aplicar tema
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" Configurar barra inferior
let g:lightline = {
      \ 'active': {
	\'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
	\ 'right': [['cocstatus'],['cocwarnings'],['cocerrors'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
	\},
	\ 'inactive': {
	  \ 'left': [['inactive'], ['relativepath']],
	  \ 'right': [['bufnum']]
	  \},
	  \'component': {
	    \'bufnum': '%n',
	    \ 'inactive': 'inactive'
	    \},
	    \'component_function': {
	      \'gitbranch': 'fugitive#head',
	      \ 'cocstatus': 'coc#status',
	      \ 'cocwarnings': 'coc#warnings',
	      \ 'cocerrors': 'coc#errors'
	      \},
	      \'colorscheme': 'gruvbox',
	      \ 'subseparator': {
		\'left': '',
		\'right': ''
		\}
	      \}
