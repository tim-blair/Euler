num = 2 ** 1000

total = 0
num.to_s.each_char do |c|
	total += c.to_i
end

puts total
