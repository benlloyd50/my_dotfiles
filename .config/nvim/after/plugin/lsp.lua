local cmp = require 'cmp'

-- hit enter to use completion selected
cmp.setup {
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }
  })
}

-- formats the file before saving
vim.api.nvim_create_autocmd('BufWritePre', {
  callback = function()
    vim.lsp.buf.format {
      async = false,
    }
  end,
})

