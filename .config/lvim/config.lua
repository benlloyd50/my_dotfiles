local components = require "lvim.core.lualine.components"
-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.colorscheme = "gruvbox"
vim.opt.relativenumber = true
vim.opt.numberwidth = 3

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for histry in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- Additional Plugins
lvim.plugins = {
    --[[ {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    }, ]]
  {"ellisonleao/gruvbox.nvim"},  -- gruvbox theme
  {"easymotion/vim-easymotion"},  -- great movement with <leader><leader>s
}

-- dashboard settings
lvim.builtin.alpha.dashboard.section.header.val = {
  "          ▀████▀▄▄              ▄█ ",
  "            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ",
  "    ▄        █          ▀▀▀▀▄  ▄▀  ",
  "   ▄▀ ▀▄      ▀▄              ▀▄▀  ",
  "  ▄▀    █     █▀   ▄█▀▄      ▄█    ",
  "  ▀▄     ▀▄  █     ▀██▀     ██▄█   ",
  "   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ",
  "    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ",
  "   █   █  █      ▄▄           ▄▀   ",
}

-- lualine config
lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.options.theme = "gruvbox"
