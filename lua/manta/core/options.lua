-- vim.cmd.colorscheme "catppuccin"
vim.cmd("let g:netrw_liststyle = 3")
vim.cmd("set cursorline")
vim.cmd("se synmaxcol=200")
local opt = vim.opt
opt.relativenumber = true
opt.number = true
opt.autoindent = true
opt.wrap = false
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
opt.tabstop = 2
opt.shiftwidth = 4
opt.expandtab = true
vim.o.winborder = "rounded"

vim.cmd("se mouse=")

vim.cmd("highlight GitGraphBranchName guifg=#74c7ec")
vim.cmd("highlight GitGraphAuthor guifg=#b4befe")
vim.cmd("highlight GitGraphTimestamp guifg=#cdd6f4")
vim.cmd("highlight GitGraphBranchMsg guifg=#cdd6f4")
vim.cmd("highlight GitGraphHash guifg=#cba6f7")
vim.cmd("highlight GitGraphTag guifg=#f5c2e7")

vim.cmd("highlight GitGraphBranch1 guifg=#f38ba8")
vim.cmd("highlight GitGraphBranch2 guifg=#cba6f7")
vim.cmd("highlight GitGraphBranch3 guifg=#fab387")
vim.cmd("highlight GitGraphBranch4 guifg=#89b4fa")
vim.cmd("highlight GitGraphBranch5 guifg=#a6e3a1")
