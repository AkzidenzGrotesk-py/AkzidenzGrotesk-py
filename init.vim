"Neovim Configuration, akzidenz
"nvim -> Windows Terminal w/ Iosevka Term Regular @ h12, padding 12
"
set guifont=Iosevka\ Term\ 12
set guioptions-=m
set guioptions-=T

syntax on
filetype plugin indent on
set noswapfile
set autochdir

" Default file values
function LoadDefaultByFileType(filetype)
  let curFileSize = getfsize(@%)
  if (curFileSize==0) || (curFileSize==-1)
    let file_loc = "C:\\Users\\Kazuto (^^)\\AppData\\Local\\nvim\\fdefaults\\default." . a:filetype
    let failed = append(0, readfile(file_loc))
    if (failed)
      echo "Unable to add default text."
    else
      let &modified = 1
    endif
  endif
endfunction

autocmd FileType python call LoadDefaultByFileType("py")
autocmd FileType c call LoadDefaultByFileType("c")
autocmd FileType html call LoadDefaultByFileType("html")
autocmd FileType css call LoadDefaultByFileType("css")

" Keys
inoremap jk <ESC>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set mouse= "a

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
set termguicolors
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:↩,precedes:«,extends:»
set scrolloff=20

"vim-plug
call plug#begin('C:\Users\Kazuto (^^)\AppData\Local\nvim\myplugins')
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/davidhalter/jedi-vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/space-vim-dark'
Plug 'ghifarit53/tokyonight-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'https://github.com/drewtempelmeyer/palenight.vim'
Plug 'https://github.com/wikitopian/hardmode'
call plug#end()

"airline
let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
" gruber-darker sets to atomic
" let g:airline_theme="atomic"

"minimap
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

"languageclient-neovim
let g:LanguageClient_serverCommands = {
  \ 'cpp': ['clangd'],
  \ 'c' : ['clangd'],
  \ }

"tagbar
nmap <C-R> :TagbarToggle<CR>
