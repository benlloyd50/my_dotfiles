-- custom remaps are defined here so we can see them in the whichkey window
local wk = require('which-key')

wk.register({
    ["<leader>"] = {
        f = {
          name = "+telescope cmds",
          f = { "<cmd>Telescope find_files<cr>", "Find File" },
          g = { "<cmd>Telescope live_grep<cr>", "Grep Files" },
          r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        },
        b = {
            name = "+buffer cmds",
            l = {"<cmd>ls<cr>", "Show all buffers"},
            d = {"<cmd>bd<cr>", "Delete current buffer"},
            n = {"<cmd>bn<cr>", "Buffer next"},
            p = {"<cmd>bp<cr>", "Buffer previous"},
        },
        c = {
            name = "+some stuff",
            f = {"<cmd>:!cargo fmt<CR>"},
            d = {"<cmd>:cd %:p:h<CR>:pwd<CR>", "Change directory to this file"},
        },
        g = {
            name = "+git cmds",
            s = { "<cmd>Git<CR>", "status"},
        },
    },
    w = { ":HopWord<CR>", "Hop to a word on screen" },
    f = { ":HopChar1<CR>", "Hop to a character on screen" },
    S = { ":HopLineStartMW<CR>", "Hop to the start of a line" },
    C = { ":HopChar1MW<CR>", "Hop to a character on screen in any window" },
})
