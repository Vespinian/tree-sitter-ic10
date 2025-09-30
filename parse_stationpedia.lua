-- local M = {}
-- vim regex to remove the html tags :%s/<[^>]\+>//g
-- local stationpdia =
local json = vim.fn.json_decode(vim.fn.readfile("./Stationpedia.json"))
-- print(vim.inspect(json.scriptEnums.LogicType))
-- print(vim.inspect(json.scriptEnums.LogicSlotType))
-- print(vim.inspect(json.scriptEnums.LogicReagentMode))
-- print(vim.inspect(json.scriptEnums.LogicBatchMode))
-- print(vim.inspect(json.basicEnum.LogicType))
-- print(vim.inspect(json.scriptCommands))

-- local commands = {}
-- for index, value in pairs(json.scriptCommands) do
-- 	-- print(index) -- .. ": " .. value.desc)
-- 	table.insert(commands, index)
-- end
-- buf = vim.api.nvim_create_buf(true, true)
-- vim.api.nvim_buf_set_lines(buf, 0, -1, false, commands)

-- print(vim.inspect(commands))

-- return M
