"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on 
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set incsearch
" set colorcolumn=80
set relativenumber
set hidden 
set scrolloff=8
set nohlsearch
set autochdir 
set termguicolors " this variable must be enabled for colors to be applied properly
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 14
let g:NetrwIsOpen=0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell Checker 
set spelllang=de_de,en
nnoremap <silent> <F9> :set spell!<cr>
inoremap <silent> <F9> <C-O>:set spell!<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Define the leader key "
let mapleader = " "
"
""Vim Plug"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
    Plug 'gruvbox-community/gruvbox'
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-lua/completion-nvim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'simeji/winresizer'
    Plug 'jiangmiao/auto-pairs'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'ryanoasis/vim-devicons'
    Plug 'kyazdani42/nvim-web-devicons' " for file icons
    Plug 'hoob3rt/lualine.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'
    Plug 'lervag/vimtex'
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } " LaTeX plugIn : Live Preview 
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' } " Markdown live preview
    "Plug 'kassio/neoterm' " Neo terminal 
    "Plug 'junegunn/goyo.vim' " Goyo for showing clean view (centered)
    "Plug 'neoclide/coc.nvim', {'branch': 'release'} " Conquer of Completion : Autocompletion and more 
    "Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy finder 
    "Plug 'junegunn/fzf.vim'
    "Plug 'itchyny/lightline.vim' " a fancy bar to show current file path and neo vim mode 
    "Plug 'godlygeek/tabular' | Plug 'tpope/vim-markdown'  
    "Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'} " Server for live preview while making website 
    "Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    "Plug 'nvim-treesitter/playground'
    "Plug 'nvim-lua/completion-nvim'
    "Plug 'kabouzeid/nvim-lspinstall'
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"" Plugin Configurations  
source ~/Projects/dot-files/nvim/nvim-tree-config.vim
source ~/Projects/dot-files/nvim/lsp-config.vim
source ~/Projects/dot-files/nvim/gruvbox-config.vim
source ~/Projects/dot-files/nvim/telescope-config.vim
source ~/Projects/dot-files/nvim/completion-config.vim
source ~/Projects/dot-files/nvim/winresizer-config.vim
source ~/Projects/dot-files/nvim/tex-config.vim

"" show hover doc
nnoremap <silent>K :Lspsaga hover_doc<CR>

"" Compe 
lua require("init")
""luafile ~/Projects/dot-files/lua/compe-config.lua
luafile ~/Projects/dot-files/lua/lsp-config.lua
luafile ~/Projects/dot-files/lua/lspsaga-config.lua
"luafile ~/Projects/dot-files/lua/telescope-config.lua
luafile ~/Projects/dot-files/lua/lualine-config.lua
" luafile ~/Projects/dot-files/lua/completion-config.lua
