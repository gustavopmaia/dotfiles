require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = { "lua_ls", "tsserver" }
})



local on_attach = function(client, bufnr)
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = vim.api.nvim_create_augroup("Format", { clear = true }),
			buffer = bufnr,
			callback = function() vim.lsp.buf.formatting_seq_sync() end
		})
	end
end

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

require("lspconfig").flow.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

require("lspconfig").lua_ls.setup {
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false
			}
		}
	}
}

require("lspconfig").tsserver.setup {
	on_attach = on_attach,
	filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
	cmd = { "typescript-language-server", "--stdio" },
	capabilities = capabilities
}

require("lspconfig").rust_analyzer.setup {
	on_attach = on_attach,
	settings = {
		["rust_analyzer"] = {
			imports = {
				granularity = {
					group = "module"
				},
				prefix = "self"
			},
			cargo = {
				buildScripts = {
					enable = true
				},
			},
			procMacro = {
				enable = true
			}
		}
	}
}
