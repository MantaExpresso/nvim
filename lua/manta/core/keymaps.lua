vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "<C-i>", "<ESC>", { desc = "Normal mode without killing my pinky" })
keymap.set("n", "<C-BS>", "d^")
-- keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "<leader>cc", "<cmd>Cord toggle<CR>")
-- keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>")

keymap.set("n", "<leader>hh", "<cmd>BufferLineCyclePrev<CR>")
keymap.set("n", "<leader>ll", "<cmd>BufferLineCycleNext<CR>")
keymap.set("n", "<leader>dd", "<cmd>bd!<CR>")

keymap.set("n", "<leader>st", "<cmd>ExportTable<CR>")
keymap.set("n", "<leader>et", "<cmd>EasyTablesImportThisTable<CR>")

-- keymap.set("n", "<leader>ng", "<cmd>Neogit<CR>")
keymap.set("n", "<leader>dv", "<cmd>DiffviewOpen<CR>")
