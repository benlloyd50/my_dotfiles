-- general settings for nvim (no plugin settings)

vim.opt.nu = true
-- vim.opt.relativenumber = true

-- vim.opt.tabstop = 4
-- vim.opt.softtabstop = 4
-- vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 7

vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"

vim.opt.hidden = true

vim.opt.listchars = { space = '_', tab = '>~' }

-- ======> Special function and command so I get 2 space tabs in web dev files
function set_tab_width()
    local filetypes_with_2_spaces = { "html", "ts", "tsx", "js", "css" }
    local current_filetype = vim.bo.filetype

    if vim.fn.index(filetypes_with_2_spaces, current_filetype) ~= -1 then
        vim.o.tabstop = 2
        vim.o.shiftwidth = 2
    else
        vim.o.tabstop = 4
        vim.o.shiftwidth = 4
    end
end

-- Call the function when a buffer is loaded or its filetype changes
vim.cmd("autocmd BufRead,BufNewFile,BufEnter * lua set_tab_width()")
