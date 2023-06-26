local config = {
	source_selector = {
		winbar = true, -- toggle to show selector on winbar
		statusline = true, -- toggle to show selector on statusline
	},
	default_component_configs = {
		container = {
			enable_character_fade = true,
			width = "100%",
			right_padding = 0,
		},
		--diagnostics = {
		--  symbols = {
		--    hint = "H",
		--    info = "I",
		--    warn = "!",
		--    error = "X",
		--  },
		--  highlights = {
		--    hint = "DiagnosticSignHint",
		--    info = "DiagnosticSignInfo",
		--    warn = "DiagnosticSignWarn",
		--    error = "DiagnosticSignError",
		--  },
		--},
		indent = {
			indent_size = 2,
			padding = 1,
			-- indent guides
			with_markers = true,
			indent_marker = "│",
			last_indent_marker = "└",
			highlight = "NeoTreeIndentMarker",
			-- expander config, needed for nesting files
			with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
			expander_collapsed = "",
			expander_expanded = "",
			expander_highlight = "NeoTreeExpander",
		},
		icon = {
			folder_closed = "",
			folder_open = "",
			folder_empty = "ﰊ",
			folder_empty_open = "ﰊ",
			-- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
			-- then these will never be used.
			default = "*",
			highlight = "NeoTreeFileIcon",
		},
		modified = {
			symbol = "[+] ",
			-- highlight = "NeoTreeModified",
		},
		name = {
			trailing_slash = false,
			highlight_opened_files = false, -- Requires `enable_opened_markers = true`.
			-- Take values in { false (no highlight), true (only loaded),
			-- "all" (both loaded and unloaded)}. For more information,
			-- see the `show_unloaded` config of the `buffers` source.
			use_git_status_colors = true,
			highlight = "NeoTreeFileName",
		},
		git_status = {
			symbols = {
				-- Change type
				added = "✚", -- NOTE: you can set any of these to an empty string to not show them
				deleted = "✖",
				modified = "[m]",
				renamed = "",
				-- Status type
				untracked = "[?]",
				ignored = "",
				unstaged = "",
				staged = "",
				conflict = "",
			},
			align = "right",
		},
	},
}

require("neo-tree").setup(config)
