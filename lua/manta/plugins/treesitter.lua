return {
	"nvim-treesitter/nvim-treesitter",
	-- dependencies = { "OXY2DEV/markview.nvim" },
	-- lazy = false,
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")
		treesitter.setup({
			highlight = {
				enable = true,
			},
			ensure_installed = {
				"hyprlang",
				"toml",
				"ron",
				"lua",
				"luap",
				"luadoc",
				"python",
				"rust",
				"gdscript",
				"css",
				"qmljs",
			},
			incremental_selection = {
				init_selection = "<C-space>",
				node_incremental = "<C-space>",
				scope_incremental = false,
				node_decremental = "<bs>",
			},
		})

		local keymap = vim.keymap
		keymap.set("n", "<leader>ns", "<cmd>InspectTree<CR>")
	end,
}
