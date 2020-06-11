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
set colorcolumn=80




let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END





call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe'
"Plug 'lervag/vimtex'"
call plug#end()


colorscheme gruvbox
set background=dark




if executable('rg')
    let g:rg_derive_root='true'
endif


let mapleader = " "


"Latex Configs"
map F :! pdflatex %<CR><CR>
map S :! mupdf $(echo % \| sed 's/tex$/pdf/') & disown<CR>
"map <F10> :!pdflatex % && start %:r.pdf<CR>"


