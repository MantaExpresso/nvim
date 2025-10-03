return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				json = { "jq" },
				html = { "prettier" },
				css = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				rust = { "rustfmt" }, -- installed via: rustup component add rustfmt
				toml = { "tombi", "taplo" },
				gdscript = { "gdtoolkit" },
				qml = { "prettier" },
				-- c = { "clang-format" },
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
