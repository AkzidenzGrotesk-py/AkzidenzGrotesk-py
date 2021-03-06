"Neovim Configuration, akzidenz
"nvim -> Windows Terminal w/ Iosevka Term Regular @ h12, padding 12
"
set guifont=Iosevka\ Term:h12
set guicursor=
set guioptions-=m
set guioptions-=T

syntax on
filetype plugin indent on
set noswapfile
set autochdir

" Effective fuzzy finder
set wildmenu
set path+=**

" Keys
" copy/paste
noremap <C-C> "+y
noremap <C-V> "*p
" exit insert mode with JK
inoremap jk <ESC>
" jump between split buffers
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" snippets
nnoremap \shtml :-1read /Users/k/.config/nvim/fdefaults/default.html<CR>3jwf>a
nnoremap \sc :-1read /Users/k/.config/nvim/fdefaults/default.c<CR>3j$o
nnoremap \scss :-1read /Users/k/.config/nvim/fdefaults/default.css<CR>2jo
nnoremap \spython :-1read /Users/k/.config/nvim/fdefaults/default.py<CR>3j$o
set mouse=a

" Indentation and tabs
set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
set cinoptions=l1

" Searching
set hlsearch
set ignorecase
set smartcase
set incsearch

" Line numbers
set relativenumber
set number

" Visuals
colorscheme gruber-darker
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:X,eol:\ ,precedes:«,extends:»
set scrolloff=20
set nowrap

"vim-plug
call plug#begin('/Users/k/.config/nvim/myplugins/')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neovim/nvim-lspconfig'
Plug 'ntpeters/vim-better-whitespace'
Plug 'jiangmiao/auto-pairs'
" for writing
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'
call plug#end()

"airline
let g:airline#extensions#tabline#enabled = 1

"nvim-lspconfig
lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{
  cmd = { "/usr/local/opt/llvm/bin/clangd" }
}
require'lspconfig'.jdtls.setup{}
EOF

" Tags, CTRL+] jumps to tag under cursor, CTRL+N for autocomplete
command! MakeTags !ctags -R .

"netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 15

"Writing mode
"Individual functions to ensure right configuration
function NoWriterMode()
  Goyo!
  HardPencil
  set nospell
  set nowrap
  set notitle
endfunction
function WriterMode()
  Goyo
  SoftPencil
  set spell spelllang=en_ca
  set wrap
  set title
endfunction
command Writer call WriterMode()
command NoWriter call NoWriterMode()
