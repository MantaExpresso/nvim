return {
	"williamboman/mason.nvim",
	-- event = "VeryLazy",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")
		mason.setup()
		mason_lspconfig.setup({
			ensure_installed = {
				"qmlls",
				"lua_ls",
				"pyright",
				"rust_analyzer",
			},
		})
		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"isort",
				"black",
				"pylint",
				"stylua",
			},
		})
	end,
	-- vim.lsp.config("lua_ls", {
	-- 	settings = {
	-- 		lua = {
	-- 			runtime = { version = "Lua 5.4.8" },
	-- 			diagnostics = {
	-- 				globals = { "vim", "be" },
	-- 			},
	-- 		},
	-- 	},
	-- }),
}
