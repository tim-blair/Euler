best = 0
minj = 1
999.downto(1) do |i|
	999.downto(1) do |j|
		if( j < minj )
			break
		end
		prod = i * j
		str = prod.to_s
		if( str == str.reverse && prod > best )
			best = prod
			minj = j
			break
		end
	end
end

puts best
