local ls = require("luasnip")
local types = require("luasnip.util.types")
local i = ls.insert_node
local func = ls.function_node
local snip = ls.snippet
local t = ls.text_node

ls.config.set_config({
	history = true,
	-- Update more often, :h events for more info.
	updateevents = "TextChanged,TextChangedI",
	ext_opts = {
		[types.choiceNode] = {
			active = {
				virt_text = { { "choiceNode", "Comment" } },
			},
		},
	},
	-- treesitter-hl has 100, use something higher (default is 200).
	ext_base_prio = 300,
	-- minimal increase in priority.
	ext_prio_increase = 1,
	enable_autosnippets = true,
})

local date = function()
	return { os.date("%Y-%m-%d") }
end

ls.add_snippets(nil, {
	all = {
		snip({
			trig = "meta",
			namr = "Metadata",
			dscr = "Yaml metadata format for markdown",
		}, {
			t({ "---", "title: " }),
			i(1, "note_title"),
			t({ "", "author: " }),
			i(2, "author"),
			t({ "", "date: " }),
			func(date, {}),
			t({ "", "categories: [" }),
			i(3, ""),
			t({ "]", "lastmod: " }),
			func(date, {}),
			t({ "", "tags: [" }),
			i(4),
			t({ "]", "comments: true", "---", "" }),
			i(0),
		}),
	},
})

require("luasnip.loaders.from_vscode").lazy_load()

ls.filetype_extend("javascriptreact", { "html" })
ls.filetype_extend("typescriptreact", { "html" })
