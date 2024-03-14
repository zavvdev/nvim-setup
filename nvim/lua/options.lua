vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set autoindent")
vim.cmd("set updatetime=800")
vim.cmd("set relativenumber")

vim.g.mapleader = " "
vim.g.netrw_banner = 0

vim.keymap.set("n", "<leader>e", ":Explore<CR>", {}) -- Open Netrw
