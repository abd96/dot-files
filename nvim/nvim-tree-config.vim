" nvim-tree 
let g:nvim_tree_auto_open = 1
let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache', '__pycache__'] "empty by default
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the signcolumn. See :help 
nnoremap <C-e> :NvimTreeToggle<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
highlight NvimTreeFolderIcon guibg=blue
