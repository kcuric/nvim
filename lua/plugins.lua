local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	'wbthomason/packer.nvim',
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = true
	},
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	'm4xshen/autoclose.nvim',
	{
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
	},
	{ "catppuccin/nvim", as = "catppuccin" },
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim", 
	"neovim/nvim-lspconfig",
	"lewis6991/gitsigns.nvim", 
	'nvim-tree/nvim-web-devicons', 
	'romgrk/barbar.nvim',
	'christoomey/vim-tmux-navigator'
}

require("lazy").setup(plugins)
require("autoclose").setup()
