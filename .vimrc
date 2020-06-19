
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
set relativenumber

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END


"Define the leader key "
let mapleader = " "


call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    "Plug 'Valloric/YouCompleteMe'"
    "Plug 'lervag/vimtex'"
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
call plug#end()

"Scheme Colors themes settings"
colorscheme gruvbox
set background=dark

"Background transperanc"
hi Normal guibg=NONE ctermbg=NONE


"File Navigation settings"
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

if executable('rg')
    let g:rg_derive_root='true'
endif



"latex stuff"
let g:coc_disable_startup_warning = 1
map F :! pdflatex %<CR><CR>
map S :! mupdf $(echo % \| sed 's/tex$/pdf/') & disown<CR>
noremap \b cw\begin{<C-R>"}<CR>\end{<C-R>"}
"map <F10> :!pdflatex % && start %:r.pdf<CR>"


