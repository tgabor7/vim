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
  use 'rest-nvim/rest.nvim'
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
	use 'numToStr/Comment.nvim'
	use 'christoomey/vim-tmux-navigator'
	use 'kdheepak/lazygit.nvim'
	use 'vim-test/vim-test'
  use 'stevearc/oil.nvim'
  use 'aquach/vim-http-client'
  use({
					"epwalsh/obsidian.nvim",
					tag = "*",  -- recommended, use latest release instead of latest commit
					requires = {
						-- Required.
						"nvim-lua/plenary.nvim",

						-- see below for full list of optional dependencies 👇
					},
					config = function()
						require("obsidian").setup({
							workspaces = {
								{
									name = "personal",
									path = "~/vaults/personal",
								},
								{
									name = "work",
									path = "~/vaults/work",
								},
							},
				     follow_url_func = function(url)
								vim.fn.jobstart({"xdg-open", url})  -- linux
								end,
							-- see below for full list of options 👇
						})
					end,
})
end)
