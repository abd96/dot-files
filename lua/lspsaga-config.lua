--local saga = require 'lspsaga'
--saga.init_lsp_saga()
--
--require'lspsaga.diagnostic'.show_line_diagnostics()
--
--vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--  vim.lsp.diagnostic.on_publish_diagnostics, {
--    virtual_text = false,
--    underline = true,
--    signs = true,
--  }
--)
--vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()]]
--vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]


local saga = require 'lspsaga'

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}
