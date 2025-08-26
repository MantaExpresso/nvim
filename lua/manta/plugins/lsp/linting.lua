return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewfile" },
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			Rust = { "bacon" },
			python = { "pylint" },
			lua = { "luacheck" },
			-- markdown = { "markdownlint" },
			-- toml = { "tombi" },
		}
		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})
		vim.keymap.set("n", "<leader>;", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
