num = (2..100).inject(:*)

total = 0
num.to_s.each_char do |c|
	total += c.to_i
end

puts total
