-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use('nvim-lua/plenary.nvim')

  use('mbbill/undotree')

  use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons" ,
    wants = "nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup()

      require("nvim-tree").setup {
	      hijack_cursor = true,
	      view = {
		      width = 30
	      }
      }
    end
  }

  use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
  use({'f-person/git-blame.nvim'})

  use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
  }

  use {
	  "nobbmaestro/nvim-andromeda",
	  requires = { "tjdevries/colorbuddy.nvim", branch = "dev" }
  }

  use {
	  'numToStr/Comment.nvim',
	  config = function()
		  require('Comment').setup()
	  end
  }

  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use('ThePrimeagen/harpoon')

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	  require("toggleterm").setup()
  end}

end)
