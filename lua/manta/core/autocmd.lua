local keymap = vim.keymap
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "go" },
	callback = function()
		vim.schedule(function()
			keymap.set("n", "<leader>gr", "<cmd>GoRun<CR>", { buffer = true })
			-- You can set more keymaps here by following the above format
		end)
	end,
})

vim.api.nvim_create_autocmd({ "TermOpen" }, {
	group = nativeTermGroup,
	pattern = "term://*",
	callback = function(event)
		local buf = event.buf
		-- vim.keymap.set("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to Left Window", buffer = buf, nowait = true })
		-- vim.keymap.set("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to Above Window", buffer = buf, nowait = true })
		vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode", buffer = buf, nowait = true })
	end,
})
