target = 1000
for i in 1..target do
	for j in 1..target do
		break if i + j > target 
		for k in 1..target do
			break if i + j + k > target 
			next unless i + j + k == target
			vals = [i, j, k]
			vals.sort!
			a = vals[0] * vals[0]
			b = vals[1] * vals[1]
			c = vals[2] * vals[2]
			next unless a + b == c
			puts vals[0]
			puts vals[1]
			puts vals[2]
			puts vals[0] * vals[1] * vals[2]
			Process.exit
		end
	end
end

