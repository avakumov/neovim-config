vim.wo.number = true
-- vim.wo.relativenumber = true

-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.opt.timeoutlen = 500

-- Blink cursor
vim.o.guicursor = table.concat({
	"n-v-c:block-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
	"i-ci:ver25-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
	"r:hor50-Cursor/lCursor-blinkwait100-blinkon100-blinkoff100",
}, ",")

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Set  tree-sitter folding based
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false --unfolding at startup

local group = vim.api.nvim_create_augroup("CustomGroup", { clear = true })

-- set conf typefile to *.conf
vim.api.nvim_create_autocmd(
	{ "BufRead", "BufNewFile", "StdinReadPost" },
	{ command = "set ft=conf", pattern = "*.conf", group = group }
)

-- settings for plugin: im-airline/vim-airline
vim.cmd("let g:airline#extensions#tabline#enabled = 1")
-- insert date by command
vim.api.nvim_create_user_command("InsertDate", require("core.utils").insert_date, {})
