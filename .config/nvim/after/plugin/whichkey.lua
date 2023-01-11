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
        ["1"] = {"<cmd>b 1<cr>", "Goto 1"},
        ["2"] = {"<cmd>b 2<cr>", "Goto 2"},
        ["3"] = {"<cmd>b 3<cr>", "Goto 3"},
        ["4"] = {"<cmd>b 4<cr>", "Goto 4"},
        ["5"] = {"<cmd>b 5<cr>", "Goto 5"},
        ["6"] = {"<cmd>b 6<cr>", "Goto 6"},
        ["7"] = {"<cmd>b 7<cr>", "Goto 7"},
        ["8"] = {"<cmd>b 8<cr>", "Goto 8"},
        ["9"] = {"<cmd>b 9<cr>", "Goto 9"},
    },
    ["cd"] = {"<cmd>:cd %:p:h<CR>:pwd<CR>", "Change directory to this file"},
  },
})
