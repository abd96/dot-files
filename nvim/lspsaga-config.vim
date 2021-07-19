" LspFinder 
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
nnoremap <silent> gh :Lspsaga lsp_finder<CR>

" code action
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>

" or use command
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

" Hover Doc 
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
" Scroll down 
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" Scroll up 
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
" Show signiture help 
nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>

" Rename 
nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>

" Preview Definition 
nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>

" Show diagnostics 
set updatetime=300
