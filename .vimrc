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

"terminal size and splitting "
set splitbelow 
set termwinsize =10x0
"set termsize should also word"


let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 14 
set autochdir 

let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction
noremap <silent> <C-E> :call ToggleNetrw()<CR>

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END


"Define the leader key "
let mapleader = " "

"Vim Plug"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    "Plug 'Valloric/YouCompleteMe'"
    "Plug 'lervag/vimtex'"
    Plug 'junegunn/goyo.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'turbio/bracey.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    Plug 'godlygeek/tabular' | Plug 'tpope/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" For markdown-preview and settings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call mkdp#util#install()
nnoremap <leader>md :MarkdownPreview<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Scheme Colors themes settings"
colorscheme gruvbox
set background=dark
set t_Co=256
"Background transperanc"
hi Normal guibg=NONE ctermbg=NONE


"COC Settings"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"File Navigation settings"
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nnoremap <C-p> :GFiles<CR>

if executable('rg')
    let g:rg_derive_root='true'
endif

set encoding=utf-8
set updatetime=300

"Use tab to navigate suggestions" 
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"FZF Settings" 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent> <C-F> :Files<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"latex stuff"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_disable_startup_warning = 1
"map F :! pdflatex %<CR><CR>
"map S :! evince $(echo % \| sed 's/tex$/pdf/') & disown<CR>
"noremap \b cw\begin{<C-R>"}<CR>\end{<C-R>"}
map F :LLPStartPreview <CR><CR>
"map <F10> :!pdflatex % && start %:r.pdf<CR>"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Configure scheme for lightline"
let g:lightline = {'colorscheme': 'jellybeans',}


"""""""" For Handling Ctrl-ArrowKeys in Vim while using TMUX
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif
