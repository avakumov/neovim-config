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
	{ "phaazon/hop.nvim" },
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"s1n7ax/nvim-window-picker",
		},
	},
	{ "nvim-treesitter/nvim-treesitter" },
	{ "neovim/nvim-lspconfig" },

	{ "ellisonleao/gruvbox.nvim", priority = 1000 },

	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate", -- :MasonUpdate updates registry contents
	},

	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp-signature-help" },
	{ "hrsh7th/vim-vsnip" },
	{ "hrsh7th/vim-vsnip-integ" },

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{ "jose-elias-alvarez/null-ls.nvim" },

	-- status line
	{ "vim-airline/vim-airline" },

	-- autopairs plugins
	{ "windwp/nvim-autopairs" },
	{ "terrortylor/nvim-comment" },

	-- terminals
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	{
		"Wansmer/langmapper.nvim",
		lazy = false,
		priority = 1, -- High priority is needed if you will use `autoremap()`
		config = function()
			require("langmapper").setup({ --[[ your config ]]
			})
		end,
	},
	-- colorizer plugin
	{ "norcalli/nvim-colorizer.lua" },

	--preview markdown file in browser plugin
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreview", "MarkdownPreviewStop" },
		lazy = false,
		build = "cd app && npm i",
		init = function()
			vim.g.mkdp_theme = "dark"
		end,
	},

	--start screen
	{ "mhinz/vim-startify" },

	--request to api
	{ "rest-nvim/rest.nvim", dependencies = "nvim-lua/plenary.nvim" },
}

require("lazy").setup(plugins)
