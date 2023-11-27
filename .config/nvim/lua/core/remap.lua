-- More complicated keybindings are defined in after/plugin/whichkey.lua
-- spacebar leader key masterrace
vim.g.mapleader = " "

-- Better window nav in normal and insert
vim.keymap.set("n", "<C-j>", "<c-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("i", "<C-j>", "<C-w>j")
vim.keymap.set("i", "<C-k>", "<C-w>k")
vim.keymap.set("i", "<C-h>", "<C-w>h")
vim.keymap.set("i", "<C-l>", "<C-w>l")

-- zz after moving up and down
vim.keymap.set("n", "<C-d>", "<c-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Matching symbol
vim.keymap.set("i", "(", "()<esc>i")
vim.keymap.set("i", "[", "[]<esc>i")
vim.keymap.set("i", "{", "{}<esc>i")
-- vim.keymap.set("i", "<", "<><esc>i")
vim.keymap.set("i", "\"", "\"\"<esc>i")
vim.keymap.set("i", "\'", "\'\'<esc>i")


