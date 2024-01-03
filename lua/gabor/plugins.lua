return require('packer').startup(function(use)
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- LSP Support
      {'neovim/nvim-lspconfig'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }

  use 'github/copilot.vim'

  use 'nvim-treesitter/nvim-treesitter'

	use 'tpope/vim-fugitive'

  use 'nvim-lualine/lualine.nvim'

	use 'simrat39/rust-tools.nvim'

	use 'tpope/vim-commentary'

	use 'nvim-lua/plenary.nvim'

	use 'ThePrimeagen/harpoon'

	use 'godlygeek/tabular'
	use 'preservim/vim-markdown'

	use 'prettier/vim-prettier'
	use 'lewis6991/gitsigns.nvim'

  use 'psliwka/vim-smoothie'
  use 'preservim/nerdtree'
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use 'tpope/vim-dadbod'
	use 'kristijanhusak/vim-dadbod-ui'
	use 'mbbill/undotree'
end)
