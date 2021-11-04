"-----------------------------------------------------------
" General/Basic Settings
"-----------------------------------------------------------

" Disable vi compatibility
set nocompatible

" Enable filetype detection
filetype on

" Enable filetype plugins and indentation
filetype plugin on
filetype indent on

" Enable syntax
syntax on

" Add numbers to each line on left-side
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces
set shiftwidth=4

" Set tab width to 4 columns
set tabstop=4

" Use space characters instead of tabs
set expandtab

" Other indentation settings
set smarttab
set autoindent
set wrap

set encoding=UTF-8

"-----------------------------------------------------------
" Searching and Highlighting
"-----------------------------------------------------------

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore case
set ignorecase

set smartcase

" highlight search result
set hlsearch

" Show matching words during search
set showmatch

" Set the commands to save in history(default = 20)
set history=500

"-----------------------------------------------------------
" CMD/Mode
"-----------------------------------------------------------

" Show partial command you type in the last line of the screen
set showcmd

" Show the mode on last line
set showmode

"-----------------------------------------------------------
" WildMenu
"-----------------------------------------------------------

" Enable auto completion menu after pressing TAB
set wildmenu

"Make wildmenu behave like similar to Bash completion
set wildmode=list:longest

" Ignore files with these extensions
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

"-----------------------------------------------------------
" Plugins
"-----------------------------------------------------------

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'

Plug 'mitermayer/vim-prettier'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
"Plug 'valloric/youcompleteme'

Plug 'tpope/vim-fugitive'

"Plug 'ryanoasis/vim-devicons'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"-----------------------------------------------------------


"-----------------------------------------------------------
" Other Settings
"-----------------------------------------------------------
set ruler
set lazyredraw
set backspace=eol,start,indent
set cmdheight=1
set magic

set title titlestring=

"-----------------------------------------------------------
" Swaps and Backups
"-----------------------------------------------------------
set nobackup
set nowb
set noswapfile

"-----------------------------------------------------------
" Turn off search highlight
nnoremap <leader>\ :nohlsearch<CR>

"-----------------------------------------------------------
" Themes
"-----------------------------------------------------------
if (has("termguicolors"))
	set termguicolors
endif

colorscheme gruvbox
set background=dark

"let g:airline_theme='onedark'

"-----------------------------------------------------------
" Terminal
"-----------------------------------------------------------

set termwinsize=10x0

"-----------------------------------------------------------
" Split Window Mappings
"-----------------------------------------------------------

set splitbelow
set splitright

" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

"-----------------------------------------------------------
" NERDTREE
"-----------------------------------------------------------
map <F3> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree | wincmd p

"let g:NERDTreeStatusline = ''

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


"-----------------------------------------------------------
" PRETTIER
let g:prettier#autoformat = 0

"-----------------------------------------------------------
" remap Ctrl-p for finding files run Fxf :Files command
nnoremap <C-p> :Files<Cr>

"-----------------------------------------------------------
" => Conquer of Completion
"-----------------------------------------------------------
" use <tab> for trigger completion and navigate to the next complete item
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction

"inoremap <silent><expr> <Tab>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<Tab>" :
"      \ coc#refresh()


"-----------------------------------------------------------
" Status Line
"-----------------------------------------------------------

" Show the status on the second last line
set laststatus=2

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

"----------------------------------------------------------
