local lsp = require('lsp-zero')
local null_ls = require('null-ls')

lsp.preset('recommended')
lsp.ensure_installed({
    'tsserver',
    'eslint',
    'cssls',
    'angularls',
    'html',
    'sumneko_lua',
    'rust_analyzer',
})

lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})
lsp.setup()

-- mason-null-ls config
-- see documentation of null-null-ls for more configuration options!
local mason_nullls = require("mason-null-ls")
mason_nullls.setup({
    automatic_installation = true,
    automatic_setup = true,
})
mason_nullls.setup_handlers({})
