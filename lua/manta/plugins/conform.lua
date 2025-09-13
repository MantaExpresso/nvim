return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				html = { "prettier" },
				css = { "prettier" },
				json = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				rust = { "rustfmt" }, -- installed via: rustup component add rustfmt
				toml = { "tombi", "taplo" },
				gdscript = { "gdtoolkit" },
				-- go = { "gofumpt" },
			},
			format_on_save = {
				isp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})
	end,
}
