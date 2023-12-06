require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = { "tsserver", "lua_ls", "terraformls" }
})

local on_attach = function(_, _)
	vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, {})
	vim.keymap.set('n', '<leader>fr', require('telescope.builtin').lsp_references, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').tsserver.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

require('lspconfig').lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

require('lspconfig').terraformls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

