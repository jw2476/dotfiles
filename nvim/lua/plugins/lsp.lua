return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				automatic_installation = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lsp = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			lsp.rust_analyzer.setup({ capabilities = capabilities })
			vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format)
		end,
	},
}
