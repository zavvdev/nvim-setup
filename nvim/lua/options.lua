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

-- Yui Colorscheme

vim.g.yui_folds = "emphasize"
vim.g.yui_line_numbers = "emphasize"
vim.g.yui_comments = "fade"

-- Conjure

-- Start a REPL first with lein repl, and then use :ConjureConnect [host] [port] to connect to it

vim.keymap.set("n", "<leader>je", ":ConjureEval<CR>", { silent = true })
vim.keymap.set("n", "<leader>jef", ":ConjureEvalFile<CR>", { silent = true })
vim.keymap.set("n", "<leader>jec", ":ConjureEvalCurrentForm<CR>", { silent = true })

--

vim.keymap.set("n", "<leader>e", ":Explore<CR>", {})                         -- Open Netrw
vim.keymap.set("n", "<leader>si", ":lua vim.diagnostic.setqflist()<CR>", {}) -- Show diagnostic errors
