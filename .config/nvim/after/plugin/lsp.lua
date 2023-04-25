local lsp = require('lsp-zero')
lsp.preset('recommended')
-- ============Custom===============

lsp.ensure_installed({
    'rust_analyzer',
    "lua_ls",
})

-- Fix Undefined global 'vim'
lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

-- Completion Menu
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<Cr>'] = cmp.mapping.confirm({select = true}),
    ['<C-Space>'] = cmp.mapping.complete(),
})
local no_snippets = ({
    {name = 'path'},
    {name = 'nvim_lsp', keyword_length = 3},
    {name = 'buffer', keyword_length = 3},
})

-- autopair integration, remove if you remove autopairs plugin
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on(
	'confirm_done',
	cmp_autopairs.on_confirm_done()
)

lsp.setup_nvim_cmp({
    mapping = cmp_mappings,{name = 'path'},
    {name = 'nvim_lsp', keyword_length = 3},
    {name = 'buffer', keyword_length = 3},
    sources = no_snippets,
})

lsp.on_attach(function(client, bufnr)
  -- local opts = {buffer = bufnr, remap = false}

  if client.name == "eslint" then
      vim.cmd.LspStop('eslint')
      return
  end

  -- remaps without whichkey
  -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  -- vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
  -- vim.keymap.set("n", "gl", vim.diagnostic.open_float, opts)
  -- vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  -- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  local wk = require('which-key')
  wk.register({
      g = {
        name = "+lsp",
        d = {"vim.lsp.buf.definition", "Definition"},
        D = {"vim.lsp.buf.declaration", "Declaration"},
        l = {"vim.diagnostic.open_float", "Line diagnostics"},
      },
      K = {"vim.lsp.buf.hover", "Information"},
      ["<leader>"] = {
        a = {"vim.lsp.buf.code_action", "Code action"},
        R = {"vim.lsp.buf.rename", "Rename symbol"},
      },
  })

end)

vim.opt.signcolumn = 'yes'

-- =================================
lsp.setup()
