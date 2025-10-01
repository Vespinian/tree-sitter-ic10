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

local operations = {}
for index, value in pairs(json.scriptCommands) do
	table.insert(operations, index)
end
table.sort(operations)
-- print(vim.inspect(operations))
vim.fn.writefile(operations, "data/operations.txt")

local logictypes = {}
for index, value in pairs(json.scriptEnums.LogicType.values) do
	table.insert(logictypes, index)
end
table.sort(logictypes)
-- print(vim.inspect(logictypes))
vim.fn.writefile(logictypes, "data/logictypes.txt")

local slotlogictypes = {}
for index, value in pairs(json.scriptEnums.LogicSlotType.values) do
	table.insert(slotlogictypes, index)
end
table.sort(slotlogictypes)
-- print(vim.inspect(slotlogictypes))
vim.fn.writefile(slotlogictypes, "data/slotlogictypes.txt")

local reagentmodes = {}
for index, value in pairs(json.scriptEnums.LogicReagentMode.values) do
	table.insert(reagentmodes, index)
end
table.sort(reagentmodes)
-- print(vim.inspect(reagentmodes))
vim.fn.writefile(reagentmodes, "data/reagentmodes.txt")

local batchmodes = {}
for index, value in pairs(json.scriptEnums.LogicBatchMethod.values) do
	table.insert(batchmodes, index)
end
table.sort(batchmodes)
-- print(vim.inspect(batchmodes))
vim.fn.writefile(batchmodes, "data/batchmodes.txt")

local enums = {}
for index, value in pairs(json.basicEnums) do
	for sub_index, sub_value in pairs(value.values) do
		if index == "_unnamed" then
			table.insert(enums, sub_index)
		else
			table.insert(enums, index .. "." .. sub_index)
		end
	end
end
table.sort(enums)
-- print(vim.inspect(enums))
vim.fn.writefile(enums, "data/enums.txt")
-- return M
