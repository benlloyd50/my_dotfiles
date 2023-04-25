-- custom remaps are defined here so we can see them in the whichkey window
local wk = require('which-key')

wk.register({
  ["<leader>"] = {
    f = {
      name = "+file",
      f = { "<cmd>Telescope find_files<cr>", "Find File" },
      r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
      n = { "<cmd>enew<cr>", "New File" },
    },
    b = {
        name = "+buffer",
        l = {"<cmd>ls<cr>", "Show all buffers"},
        n = {"<cmd>bn<cr>", "Buffer next"},
        p = {"<cmd>bp<cr>", "Buffer previous"},
    },
    ["cd"] = {"<cmd>:cd %:p:h<CR>:pwd<CR>", "Change directory to this file"},
  },
})
