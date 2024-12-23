local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-commentary'
  use 'dracula/vim'
  use { "AckslD/nvim-gfold.lua", }
  use { "ellisonleao/gruvbox.nvim" }
  use { "catppuccin/nvim", as = "catppuccin" }
  use {'stevearc/dressing.nvim'}
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"
  use 'bluz71/vim-nightfly-colors'
  use 'lewis6991/gitsigns.nvim'
  use 'preservim/vimux'
  use 'christoomey/vim-tmux-navigator'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'tpope/vim-rhubarb'
  use 'idanarye/vim-merginal'
  use 'stevearc/oil.nvim'
  use 'almo7aya/openingh.nvim'
  use 'MagicDuck/grug-far.nvim'
  use 'MunifTanjim/nui.nvim'
  use 'rcarriga/nvim-notify'

  -- completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets"
  use {
    'LukasPietzschmann/telescope-tabs',
    requires = { 'nvim-telescope/telescope.nvim' },
  }

  use({
    "folke/noice.nvim",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
      }
  })

  use({
    "epwalsh/obsidian.nvim",
    tag = "*",  -- recommended, use latest release instead of latest commit
    requires = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
  })

  use({
    "vhyrro/luarocks.nvim",
     priority = 1001, -- this plugin needs to run before anything else
     opts = {
      rocks = { "magick" },
     },
  })

  use({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  })

  use({
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.8',
	  requires = { {'nvim-lua/plenary.nvim'} }
  })

  use({
    'chrishrb/gx.nvim',
	  requires = { {'nvim-lua/plenary.nvim'} }
  })

  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
  }

  use({
    "3rd/image.nvim",
     dependencies = { {"luarocks.nvim"} },
  })

  use({
    "lervag/vimtex",
    lazy = true,     -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
  })


  if packer_bootstrap then
    require('packer').sync()
  end
end)
