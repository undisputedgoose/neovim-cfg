let mapleader=" "

filetype plugin indent on

set guicursor=
set nowrap
set scrolloff=2
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set nohlsearch
set incsearch
set ignorecase
set smartcase
set noerrorbells
set nu
set rnu
set mouse=v
set title
set ruler
set noshowmode
set noswapfile
set smartindent
set termguicolors

call plug#begin('~/.config/nvim/plugged')

Plug 'jacoborus/tender.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'vim-syntastic/syntastic'
Plug 'neovimhaskell/haskell-vim'

call plug#end()

" colorscheme stuff
colorscheme tender

" treesitter stuff
lua << EOF

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "haskell", "rust", "vim", "lua" },
  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
}

EOF

" fugitive stuff
nnoremap <leader>g :G <CR>

" lightline stuff
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" syntastic stuff
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_check_on_open = 0
let g:syntastic_asm_checkers = []

" haskell stuff
let g:haskell_classic_highlighting = 1
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4 
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
let g:haskell_indent_case_alternative = 1
