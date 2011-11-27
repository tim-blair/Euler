primes = [2]

for i in 2...10000 do
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

target = 600851475143
factors = []
while( target > 1 ) do
	primes.each do |p|
		if( target % p == 0 )
			factors << p
			target /= p
		end
	end
end

puts factors.max
puts target
