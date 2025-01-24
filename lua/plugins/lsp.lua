-- TODO: call LspRestart after installing

return {
	{
		"nvim-lspconfig",
		keys = {
			{ "<leader>cf", "<cmd>lua vim.lsp.buf.format()<cr>", desc = "LSP format" },
			{ "<leader>cd", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "LSP definition" },
		},
	},
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason").setup({})
			require("mason-lspconfig").setup({
				handlers = {
					-- Default
					function(server)
						require("lspconfig")[server].setup({})
					end,
					-- Other custom configs here
				},
			})
		end,
	},
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = { "williamboman/mason.nvim", "nvimtools/none-ls.nvim", "nvim-lua/plenary.nvim" },
		config = function()
			require("mason-null-ls").setup({
				ensure_installed = {
					-- Opt to list sources here, when available in mason.
				},
				automatic_installation = false,
				handlers = {},
			})
			require("null-ls").setup({
				sources = {
					-- Anything not supported by mason.
				},
			})
		end,
	},
}
