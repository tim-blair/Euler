i = 3
primes = [2]
while( primes.length < 10001 ) do
#while( primes.length < 6 ) do
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
	i += 2
end

puts primes.last
