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

	-- themes
	{ "ellisonleao/gruvbox.nvim", priority = 1000 },
	{ "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
	{ "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
	{ "savq/melange-nvim" },
	{ "yeddaif/neovim-purple" },

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
		-- tag = "0.1.4",
		branch = "0.1.x",
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
	{ "NvChad/nvim-colorizer.lua" },

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
	--register manager
	{
		"tversteeg/registers.nvim",
		name = "registers",
		keys = {
			{ '"', mode = { "n", "v" } },
			{ "<C-R>", mode = "i" },
		},
		cmd = "Registers",
	},
	--start screen
	{ "mhinz/vim-startify" },

	--request to api
	{ "rest-nvim/rest.nvim", dependencies = "nvim-lua/plenary.nvim" },

	--session autosave
	{ "Shatur/neovim-session-manager", dependencies = "nvim-lua/plenary.nvim" },

	--show git diff in buffer
	{ "airblade/vim-gitgutter" },

	--snippets
	{
		"L3MON4D3/LuaSnip",
		dependencies = {}, -- follow latest release.
		version = "2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
	},
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",

	--Indent Blankline
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
}

require("lazy").setup(plugins)
