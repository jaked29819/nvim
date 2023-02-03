-- only required if you have a packer cofigured as 'opt'
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	--packer can manage itself
	use 'wbthomason/packer.nvim'

	-- fuzzy finder
	use { 'nvim-telescope/telescope.nvim', tag='0.1.1',
	-- or				     , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
	}

	--color schemes
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			require("rose-pine").setup()
			vim.cmd('colorscheme rose-pine')
		end
	})

	use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use( 'nvim-treesitter/playground')
	use( 'theprimeagen/harpoon' )
	use( 'mbbill/undotree' )
	use( 'tpope/vim-fugitive' )

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
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

end)
