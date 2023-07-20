require("nvim-treesitter.configs").setup({
	ensure_installed = { "typescript", "tsx", "javascript", "lua" },
	-- ensure_installed = "all",
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})
