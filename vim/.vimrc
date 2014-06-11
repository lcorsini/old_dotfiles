set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' 				" let Vundle manage Vundle, required
Plugin 'terryma/vim-multiple-cursors'	" Vim Multiple cursors
Plugin 'scrooloose/nerdtree'			" NERDTree
Plugin 'kien/ctrlp.vim'					" Ctrl-P

call vundle#end()            " required all of your Plugins must be added before the following line
filetype plugin indent on    " required

colorscheme zenburn
set guifont=Terminus\ 8
set pastetoggle=<F2>					" Paste mode to disable auto-indenting while pasting text
set tabstop=4     						" a tab is four spaces
set backspace=indent,eol,start			" allow backspacing over everything in insert mode
set autoindent    						" always set autoindenting on
set copyindent    						" copy the previous indentation on autoindenting
set number        						" always show line numbers
set shiftwidth=4  						" number of spaces to use for autoindenting
set shiftround    						" use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     						" set show matching parenthesis
set smarttab      						" insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      						" highlight search terms
set incsearch     						" show search matches as you type
syntax on								" set syntax highlighting
set omnifunc=syntaxcomplete#Complete 	" activate autocomplete with <C-X><C-O>, navigate with <C-N> and <C-P>
set completeopt=longest,menuone			" inserts the longest common text of all matches; and the menu will come up even if there's only one match. 
set mouse=a

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
