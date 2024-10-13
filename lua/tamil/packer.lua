vim.cmd [[packadd packer.nvim]]

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use { 'mhinz/vim-grepper' }

	use { 'nvim-tree/nvim-tree.lua' }

	use { 'nvim-treesitter/nvim-treesitter', { run = ":TSUpdate" } }
	use { 'nvim-treesitter/playground' }

	use { "rose-pine/neovim", as = "rose-pine" }

	use { 'nvim-lua/plenary.nvim' }
	use { 'ThePrimeagen/harpoon' }

	use { 'mbbill/undotree' }

	use { 'simrat39/symbols-outline.nvim' }

	use { 'tpope/vim-fugitive' } -- for git

	use { 'windwp/nvim-autopairs' }

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {

			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'hrsh7th/cmp-cmdline' },
			{ 'hrsh7th/cmp-vsnip' },
			{ 'hrsh7th/vim-vsnip' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
			{ 'mfussenegger/nvim-jdtls' },
		}
	}

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins

	if packer_bootstrap then
		require('packer').sync()
	end

	require("mason").setup()
end)
