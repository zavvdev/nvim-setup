vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set autoindent")
vim.cmd("set updatetime=800")
vim.cmd("set relativenumber")
-- add more languages for spellchecking using comma separation (iso format)
-- vim will download them on the next start
vim.cmd("set spelllang=en_us")
vim.cmd("set spell")

vim.g.mapleader = " "
vim.g.netrw_banner = 0

-- Yui Colorscheme

vim.g.yui_folds = "emphasize"
-- vim.g.yui_line_numbers = "emphasize"
vim.g.yui_comments = "fade"

vim.keymap.set("n", "<leader>e", ":Explore<CR>", {})                         -- Open Netrw
vim.keymap.set("n", "<leader>v", ":Vexplore<CR>", {})                        -- Vertical split from file
vim.keymap.set("n", "<leader>t", ":tab split<CR>", {})                       -- Open current file in a new tab
vim.keymap.set("n", "<leader>si", ":lua vim.diagnostic.setqflist()<CR>", {}) -- Show diagnostic errors

-- multiline edit
vim.keymap.set("v", "<leader>aa", "<C-v>A", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>ar", "<C-v>", { noremap = true, silent = true })

-- window resize
vim.keymap.set("n", "<leader>>", "10<C-w>>", { desc = "Increase window width by 10" })
vim.keymap.set("n", "<leader><", "10<C-w><", { desc = "Decrease window width by 10" })
vim.keymap.set("n", "<leader>=", "<C-w>=", { desc = "Equalize split sizes" })

-- autocompletion
vim.keymap.set("i", "<S-Tab>", "<C-n>", { noremap = true, desc = "Shift+Tab in insert mode" })
vim.cmd("set complete=.,w,b,u,t")
