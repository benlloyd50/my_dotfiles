local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  "          ▀████▀▄▄              ▄█ ",
  "            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ",
  "    ▄        █          ▀▀▀▀▀  ▄▀  ",
  "   ▄▀ ▀▄      ▀▄              ▀▄▀  ",
  "  ▄▀    █     █▀   ▄█▀▄      ▄█    ",
  "  ▀▄     ▀▄  █     ▀██▀     ██▄█   ",
  "   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ",
  "    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ",
  "   █   █  █      ▄▄           ▄▀   ",
}

dashboard.section.buttons.val = {
    dashboard.button( "<leader>e",  "🆕 New File", ":ene <BAR> startinsert <CR>"),
    dashboard.button( "<leader>fc", "💻 Look for Code", ":cd $HOME/Dcuments/Coding | Telescope find_files<CR>"),
    dashboard.button( "<leader>ff", "🔎 Look for Files", ":Telescope oldfiles<CR>"),
    dashboard.button( "<leader>q",  "🍃 Quit NVIM", ":qa<CR>"),
}

