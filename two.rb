total = 0
a = 1
b = 2
while( a < 4000000) do
	if( b.even? )
		total += b
	end
	a, b = b, a + b
end
puts total
