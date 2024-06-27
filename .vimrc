" Show line numbers
set number
set relativenumber

" Enable syntax highlighting
syntax on

" Enable filetype
filetype on

" tabs & indentation
" Set tab width to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set smartindent

" line wrapping
" disable line wrapping
set nowrap

" search settings
set ignorecase
set smartcase

" consider string-string as whole word
set iskeyword+=-

" Enable mouse support
set mouse=a

" Enable line wrapping
" set wrap

" Highlight search results
set hlsearch

" Enable autoindent
set autoindent

" Use the system clipboard
set clipboard=unnamed

" Enable incremental searching
set incsearch

" Show the current line and column number
set ruler

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" Enable spell checking
" set spell spelllang=en_us

" map the leader key to the comma key
let mapleader = ","

" map the F5 key to save and exit
nmap <F5> :w<CR>:q<CR>

:set termguicolors

" show sign column so that text doesn't shift
set signcolumn=yes

" highlight the current cursor line
:set cursorline

" highlight LineNr ctermfg=252 guifg=#495162
" highlight CursorLineNr ctermfg=252 guifg=#c6c6c6


" onedark.vim override: Don't set a background color when running in a terminal;
" just use the terminal's background color
" `gui` is the hex color code used in GUI mode/nvim true-color mode
" `cterm` is the color code used in 256-color mode
" `cterm16` is the color code used in 16-color mode
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

colorscheme onedark
