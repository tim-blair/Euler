$lengths = [1, 1]

def iterate(n, len)
	if !$lengths[n].nil?
		len + $lengths[n]
	elsif n.even?
		iterate(n/2, len + 1)
	else
		iterate(3 * n + 1, len + 1)
	end
end

for i in 1..1000000 do
	$lengths[i] = iterate(i, 0)
end

best = 0
bestInd = 0
$lengths.each_index do |i|
	if $lengths[i] > best
		best = $lengths[i]
		bestInd = i
	end
end

puts bestInd
puts best
#puts iterate(ARGV[0].to_i, 0)
