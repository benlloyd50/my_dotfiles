-- local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>f', builtin.find_files, {})

local actions = require('telescope.actions')
require('telescope').setup{
    defaults = {
        mappings = {
            n = {
                ['M-j'] = actions.move_selection_next,
                ['M-k'] = actions.move_selection_previous,
            }
        },
        path_display = { "smart"},
        set_env = { ["COLORTERM"] = "truecolor" },
    }
}
