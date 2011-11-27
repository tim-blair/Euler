primes = [2]
for i in 2...20 do
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

allFactors = []
for target in 2..20 do
	factors = []
	while( target > 1 ) do
		primes.each do |p|
			if( target % p == 0 )
				factors << p
				target /= p
			end
		end
	end
	#merge the factors
	factors.each do |f|
		while( factors.count(f) > allFactors.count(f) ) do
			allFactors << f
		end
	end
end
puts allFactors.inject{|l,r| l*r}

#Works, but mega slow
#cur = 2
#while( true ) do
	#found = true
	#2.upto(20) do |i|
		#if( cur % i != 0 )
			#cur += 1
			#found = false
			#break
		#end
	#end
	#if( found )
		#break
	#end
#end

#puts cur
