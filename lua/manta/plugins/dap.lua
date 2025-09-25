return {
	"mfussenegger/nvim-dap",
	config = function()
		require("lazydev").setup({
			library = { "nvim-dap-ui" },
		})
	end,
}
