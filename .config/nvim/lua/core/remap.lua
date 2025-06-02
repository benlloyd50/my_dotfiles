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
vim.keymap.set("i", "\"", "\"\"<esc>i")
vim.keymap.set("i", "\'", "\'\'<esc>i")

-- Buffer movement
vim.keymap.set("n", "<leader>bn", "<cmd>bn<cr>")
vim.keymap.set("n", "<leader>bp", "<cmd>bp<cr>")
vim.keymap.set("n", "<leader>bd", "<cmd>bd<cr>")
vim.keymap.set("n", "<leader>bl", "<cmd>ls<cr>")

vim.keymap.set("n", "<leader><F5>", "<cmd>source ~/.config/nvim/init.lua<cr>")

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")

vim.keymap.set("n", "<leader>c", "<cmd>HopChar1<cr>")

vim.keymap.set("n", "<leader>g", "<cmd>Git<cr>")
