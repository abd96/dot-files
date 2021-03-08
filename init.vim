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
set hidden 
set scrolloff=8
set nohlsearch
set autochdir 

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 14
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
    Plug 'gruvbox-community/gruvbox'
    "Plug 'Valloric/YouCompleteMe'"
    "Plug 'lervag/vimtex'" 
    Plug 'kassio/neoterm' " Neo terminal 
    Plug 'junegunn/goyo.vim' " Goyo for showing clean view (centered)
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " Conquer of Completion : Autocompletion and more 
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy finder 
    Plug 'junegunn/fzf.vim'
    Plug 'itchyny/lightline.vim' " a fancy bar to show current file path and neo vim mode 
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } " LaTeX plugIn : Live Preview 
    Plug 'godlygeek/tabular' | Plug 'tpope/vim-markdown'  
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' } " Markdown live preview
    Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'} " Server for live preview while making website 
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"terminal size and splitting "
set nocompatible
filetype off 
let &runtimepath.='~/.vim/bundle/neoterm'
filetype plugin on 

let g:neoterm_default_mod = 'belowright'
let g:neoterm_size=11
let g:neoterm_fixedsize='1'
let g:neoterm_autoscroll='1'
let g:neoterm_autoinsert=0

" remaps for neoterm 
nnoremap <leader>tt :Ttoggle<CR>
nnoremap <leader>tn :Tnew<CR>
nnoremap <leader>to :Topen<CR>
nnoremap <leader>tc :Tclose<CR>
tnoremap <C-t> <C-\><C-n><CR>
" For markdown-preview and settings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call mkdp#util#install()
nnoremap <leader>md :MarkdownPreview<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Scheme Colors themes settings"
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
hi cocerrorhighlight ctermfg=red  guifg=#c4384b gui=undercurl term=undercurl
hi cocwarninghighlight ctermfg=yellow guifg=#c4ab39 gui=undercurl term=undercurl
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
let g:lightline = {'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ],
      \ }
      \ }

"always show statusline"
set laststatus=2

"""""""" For Handling Ctrl-ArrowKeys in Vim while using TMUX
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif
