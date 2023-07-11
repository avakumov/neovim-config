local M = {}
local function getDataFromCommand(command)
	local lines = {}
	local tmpfile = "/tmp/stmp.txt"
	os.execute(command .. " > " .. tmpfile)
	local f = io.open(tmpfile)
	if not f then
		return lines
	end
	local k = 1
	for line in f:lines() do
		lines[k] = line
		k = k + 1
	end
	f:close()
	return lines
end

local function insert_date2()
	local cmd = "date -d '-1 hour ago' +'%d.%m.%Y %H:%M'"
	local text = getDataFromCommand(cmd)

	local row, col = unpack(vim.api.nvim_win_get_cursor(0))
	vim.api.nvim_buf_set_text(0, row - 1, col, row - 1, col, text)
end

function M.insert_date()
	local handle = io.popen("date -d '-1 hour ago' +'%d.%m.%Y %H:%M'")
	if handle ~= nil then
		local output = handle:read("*a")
		local time = output:gsub("[\n\r]", " ")
		handle:close()
		local row, col = unpack(vim.api.nvim_win_get_cursor(0))
		vim.api.nvim_buf_set_text(0, row - 1, col, row - 1, col, { time })
	end
end

return M
