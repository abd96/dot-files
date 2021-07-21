"latex stuff"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_disable_startup_warning = 1
"map F :! pdflatex %<CR><CR>
"map S :! evince $(echo % \| sed 's/tex$/pdf/') & disown<CR>
"noremap \b cw\begin{<C-R>"}<CR>\end{<C-R>"}
map F :LLPStartPreview <CR><CR>
"map <F10> :!pdflatex % && start %:r.pdf<CR>"
let g:tex_flavor = 'latex'
let g:livepreview_cursorhold_recompile = 0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
