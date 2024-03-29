set nocompatible              				" be iMproved, required
syntax on									" set syntax highlighting
filetype off                  				" disable filetype indent, required for Vundle to initialize
" Vundle Setup
set rtp+=~/.vim/bundle/Vundle.vim 			" set the runtime path to include Vundle 
call vundle#begin() 						"initialize
" list of plugins to load
	Plugin 'gmarik/Vundle.vim' 				" let Vundle manage Vundle, required
	Plugin 'terryma/vim-multiple-cursors'	" Vim Multiple cursors
	Plugin 'scrooloose/nerdtree'			" NERDTree
	Plugin 'kien/ctrlp.vim'					" Ctrl-P
	Plugin 'tpope/vim-surround'				" Vim Surround
	Plugin 'bling/vim-airline'				" Vim-Airline
	Plugin 'saihoooooooo/glowshi-ft.vim'	" f search motion highlight
	Plugin 'edkolev/tmuxline.vim'			 
	Plugin 'nathanaelkane/vim-indent-guides'
	Plugin 'miyakogi/conoline.vim'
call vundle#end()            				" required all of your Plugins must be added before the following line

filetype plugin indent on    				" set indent ofr plugin, required for Vundle

colorscheme zenburn							" Default Color Scheme
set pastetoggle=<F2>						" Paste mode to disable auto-indenting while pasting text
set tabstop=4     							" a tab is four spaces
set backspace=indent,eol,start				" allow backspacing over everything in insert mode
set autoindent    							" always set autoindenting on
set copyindent    							" copy the previous indentation on autoindenting
set number        							" always show line numbers
set shiftwidth=4  							" number of spaces to use for autoindenting
set shiftround    							" use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     							" set show matching parenthesis
set smarttab      							" insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      							" highlight search terms
set incsearch     							" show search matches as you type
set omnifunc=syntaxcomplete#Complete 		" activate autocomplete with <C-X><C-O>, navigate with <C-N> and <C-P>
set completeopt=longest,menuone				" inserts the longest common text of all matches; and the menu will come up even if there's only one match. 
set mouse=a									" activate mouse support

" Disable Arrow keys in favor of hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop> 
" Map Leader key to SpaceBar
let mapleader=" "

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"vim airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
let g:airline_detect_whitespace=0 			" turn off the whitespace extension
set noshowmode

"tmuxline theme disable autoset via airline
let g:tmuxline_theme = 'zenburn'
let g:airline#extensions#tmuxline#enabled = 0
"Conoline setup
let g:conoline_auto_enable = 1
" Use theme colors in normal mode
let g:conoline_use_colorscheme_default_normal=1
" Override colors in insert mode
let g:conoline_use_colorscheme_default_insert=0
"Conoline starts in light mode, this overrides colors to dark (waiting to a way to put it in dark mode on startup)
let g:conoline_color_insert_light = "guibg=#000000 ctermbg=232"
let g:conoline_color_insert_nr_light = "guibg=#000000 ctermbg=232"
