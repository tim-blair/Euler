#1	1	1	1	1	1
#1	2	3	4	5	6
#1	3	6	10	15	21
#1	4	10	20	35	56


#3 by 3
grid = []
for i in 0..20 do
	grid[i] = []
	grid[i][0] = 1
	grid[0][i] = 1
end

for i in 1..20 do
	for j in 1..20 do
		grid[i][j] = grid[i-1][j] + grid[i][j-1]
	end
end

puts grid.flatten.max
