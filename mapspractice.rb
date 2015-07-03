# First each without concern for index
numbers = [45, 65, 321, 56]
squares = []
numbers.each do |number|
  squares << number * number
  end
puts squares

# Second each with concern for index
numbers.length.times do |i|
  numbers[i] = numbers[i] * numbers[i]
end
puts numbers

# First map example
names = ['mark', 'louis', 'sean']
names = names.map { |e| e + ' is working on code' }
puts names

# Second map example
names = ['mark', 'louis', 'sean']
phrases = names.map do |n|
  phrase = n + ' is working on code'
end
puts phrases
