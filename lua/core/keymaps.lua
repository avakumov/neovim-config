local opts = { noremap = true, silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

--remap space as leader key
keymap("", ";", "<nop>", opts)
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- delete word
keymap("n", "<leader>x", "dawi", opts)

-- add new line without move corsor
keymap("n", "<A-o>", ":call append(line('.'), '')<CR>", opts)
keymap("n", "<A-O>", ":call append(line('.')-1, '')<CR>", opts)

-- better window navigation
keymap("n", "<c-h>", "<c-w>h", opts)
keymap("n", "<c-j>", "<c-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "_", ":bprevious<CR>", opts)
keymap("n", "0", ":bnext<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>", opts)

keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dp', opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- NeoTree plugin
keymap("n", "<leader>e", ":NeoTreeFloatToggle <CR>", opts)

-- Nvim-comment plugin
keymap("v", "<leader>c", ":'<,'>CommentToggle<CR>", opts)
keymap("n", "<leader>c", ":CommentToggle<CR>", opts)

-- Git gutter plugin
keymap("n", "<leader>n", ":GitGutterNextHunk<CR>", opts)
keymap("n", "<leader>p", ":GitGutterPrevHunk<CR>", opts)

--Snip jumping between parameters
-- keymap("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
-- keymap("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
-- keymap("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
-- keymap("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
local ls = require("luasnip")
vim.keymap.set({ "i", "s" }, "<C-j>", function()
	ls.jump(1)
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-k>", function()
	ls.jump(-1)
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-l>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, { silent = true })
-- vim.keymap.set({ "i" }, "<C-K>", function()
-- 	ls.expand()
-- end, { silent = true })
