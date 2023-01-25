-- Put all the plugins you want into this file

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }	-- fuzzy file finding

  -- Color schemes
  use { "ellisonleao/gruvbox.nvim" }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )	-- gud syntax highlighting
  use('tpope/vim-fugitive')  -- git integration

  -- LSP Stuff
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use { -- auto completes pairs in a smarter way than rebinding
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

  use { -- startup dashboard
      'goolord/alpha-nvim',
      config = function ()
          require'alpha'.setup(require'alpha.themes.dashboard'.config)
      end
  }

  use("easymotion/vim-easymotion") -- fast jumping around the page

  use {
      "folke/which-key.nvim",
      config = function()
          require("which-key").setup()
      end,
  }

  use{ -- good commenting
      "terrortylor/nvim-comment",
      config = function()
          require("nvim_comment").setup()
      end
  }

  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      config = function() require("nvim-tree").setup() end
  }

  use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
          require("todo-comments").setup {
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  }

end)
