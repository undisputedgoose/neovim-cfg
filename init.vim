let mapleader=" "

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
set nomodeline
set noswapfile
set smartindent

call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-fugitive'

call plug#end()

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
