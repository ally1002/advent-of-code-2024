local Table = require("columns")

--- @param value integer
--- @return integer
local function positive(value)
	if value < 0 then
		return value * -1
	else
		return value
	end
end

local first_col = Table.get_first_col()
local second_col = Table.get_second_col()
local results = {}

table.sort(first_col)
table.sort(second_col)

for i in ipairs(first_col) do
	results[i] = positive(first_col[i] - second_col[i])
end

local result = 0
for _, n in ipairs(results) do
	result = result + n
end

print(result)
