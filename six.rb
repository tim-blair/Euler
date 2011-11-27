sumSq = 0
for i in 1..100 do
	sumSq += i * i
end

sqSum = 0
for i in 1..100 do
	sqSum += i
end
sqSum *= sqSum

puts (sqSum - sumSq)
