total = 0
for i in 1...1000 do
	if i % 3 == 0 || i % 5 == 0
		total += i
	end
end
puts total
