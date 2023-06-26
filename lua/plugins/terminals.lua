require("toggleterm").setup()

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
	cmd = "lazygit",
	direction = "float",
	hidden = true,
})

function _lazygit_toggle()
	lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>tg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>ToggleTerm direction=float<CR>", { noremap = true, silent = true })
