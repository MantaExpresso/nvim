vim.g.mapleader = " "

local keymap = vim.keymap

-- keymap.set("n", "<leader>nh", ":nohl<CR>")
-- keymap.set("i", "kj", "<ESC>")
keymap.set("i", "C-[", "<ESC>")
-- FUCK WHOEVER MESSED UP SHIT SO CTRL I DOESN'T WORK ANYMORE (It was probally me somewhere)

keymap.set("n", "<leader>cc", "<cmd>Cord toggle<CR>")

local isVirtualTextVisible = true
keymap.set("n", "<leader>vt", function()
	isVirtualTextVisible = not isVirtualTextVisible
	vim.diagnostic.config({
		virtual_text = isVirtualTextVisible,
	})
end)

keymap.set("n", "<leader>hh", "<cmd>BufferLineCyclePrev<CR>")
keymap.set("n", "<leader>ll", "<cmd>BufferLineCycleNext<CR>")
keymap.set("n", "<leader>dd", "<cmd>bd!<CR>")

keymap.set("n", "<leader>st", "<cmd>ExportTable<CR>")
keymap.set("n", "<leader>et", "<cmd>EasyTablesImportThisTable<CR>")

keymap.set("n", "<leader>dv", "<cmd>DiffviewOpen<CR>")

keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>")
keymap.set("n", "<leader>fr", "<cmd>FzfLua oldfiles<cr>")
keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>")
keymap.set("n", "<leader>cm", "<cmd>delmarks A-Z0-9<cr>")
