local Columns = require("columns")

local first_col = Columns.get_first_col()
local second_col = Columns.get_second_col()
local results = {}

for i, line in ipairs(first_col) do
	local quantity = 0

	for _, value in ipairs(second_col) do
		if line == value then
			quantity = quantity + 1
		end
	end

	results[i] = line * quantity
end

local result = 0
for _, n in ipairs(results) do
	result = result + n
end

print(result)
