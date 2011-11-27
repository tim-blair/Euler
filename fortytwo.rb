line = ''
File.open('words.txt', 'r') do |file|
	line = file.gets
end

#line = '"A","TEST","OF","WORDS"' #actually read the file...
# a and of match
triangles = {}
for i in 1..25 do
	tri = i * (i + 1)
	tri /= 2
	triangles[tri] = true
end

count = 0
words = line.split ','
words.each do |w|
	word = w[1..-2] #strip quotes
	total = 0
	base = 64 #A is 65
	word.each_byte do |c|
		total += c - base
	end
	count += 1 if triangles.key? total
end

puts count
