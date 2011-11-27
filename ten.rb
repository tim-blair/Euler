#Takes 2.5 minutes, result: 142913828922
primes = [2]
#for i in (3...10).step(2) do
for i in (3...2000000).step(2) do
	prime = true
	primes.each do |p|
		if( i % p == 0 )
			prime = false
			break
		end
	end
	if( prime )
		primes << i
	end
end

puts primes.inject { |l,r| l + r }
