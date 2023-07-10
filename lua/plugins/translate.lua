require("translate").setup({
	output = {
		float = {
			-- max_width of float window
			max_width = 40,
			-- max_height of float window
			max_height = 5,
			-- whether close float window on cursor move
			close_on_cursor_move = true,
			-- key to enter float window
			enter_key = "T",
		},
	},
	translate = {
		{
			cmd = "TransToRU",
			command = "trans",
			args = function(trans_source)
				return {
					-- "-b",
					-- "-e",
					-- "google",
					-- use proxy
					-- "-x",
					-- "http://127.0.0.1:10025",
					"-t",
					"ru",
					-- you can filter translate source here
					trans_source,
				}
			end,
			-- how to get translate source
			-- selection | input | clipboard
			input = "selection",
			-- how to output translate result
			-- float_win | notify | clipboard | insert
			output = { "float_win" },
		},
		{
			cmd = "TransToEN",
			command = "trans",
			args = function(trans_source)
				return {
					-- "-b",
					-- "-e",
					-- "google",
					"-t",
					"en",
					trans_source,
				}
			end,
			input = "input",
			output = { "notify", "clipboard" },
		},
	},
})
