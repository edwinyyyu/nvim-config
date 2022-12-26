local map = vim.keymap.set
local opts = { silent = true }

vim.g.mapleader = " "

-- Indenting
map("n", "<", "<<", opts)
map("n", ">", ">>", opts)
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Move block
map("v", "K", ":m '<-2<CR>gv=gv", opts)
map("v", "J", ":m '>+1<CR>gv=gv", opts)

-- NvimTree
map("n", "<Leader>e", ":NvimTreeFocus<CR>", opts)
