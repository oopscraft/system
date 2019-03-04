" =============================================================
" set runtime path to include Vundle and initailze
" ============================================================= 
call vundle#begin()
Plugin 'git://github.com/VundleVim/Vundle.vim.git'

" NERDTree plugin configuration
Plugin 'scrooloose/nerdtree'
let NERDTreeWinPos = "left"
let NERDTreeWinSize = 50
let NERDTreeMinimalUI = 1 
let NERDTreeDirArrows = 1

" Pretty status bar plugin
Plugin 'vim-airline/vim-airline'

" Git plugin
Plugin 'tpope/vim-fugitive'

" Displays git changed contents
Plugin 'airblade/vim-gitgutter'

" Checks syntax error
Plugin 'scrooloose/syntastic'

" Finds source
Plugin 'ctrlpvim/ctrlp.vim'

" Color Scheme
Plugin 'nanotech/jellybeans.vim'

" Curreunt window opacity
Plugin 'blueyed/vim-diminactive'
let g:diminactive_enable_focus = 1

" Marks all keyword for searching.
Plugin 'haya14busa/incsearch.vim'

" Autocompletion
Plugin 'lifepillar/vim-mucomplete'
set completeopt+=menuone

call vundle#end()

" =============================================================
" Vim initial configuration
" =============================================================
set lines=70 columns=250
set nowrap
set number
set ts=4
set encoding=UTF-8
syntax on
filetype on
set t_Co=256
colorscheme jellybeans
set background=dark

" ============================================================
" Defines Short Cut
" ============================================================
nmap <F12> :NERDTreeToggle<CR>
