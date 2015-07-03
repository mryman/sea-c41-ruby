# 5 points
#
# Write a program that displays the lyrics to the beloved nursery rhyme
# "3 Bottles of Beer on the Wall".
#
# Here's how the program must work:
#
#   $ ruby exercise1.rb
#   3 bottles of beer on the wall, 3 bottles of beer!
#   Take one down, pass it around, 2 bottles of beer on the wall!
#   2 bottles of beer on the wall, 2 bottles of beer!
#   Take one down, pass it around, 1 bottle of beer on the wall!
#   1 bottle of beer on the wall, 1 bottle of beer!
#   Take one down, pass it around, no more bottles of beer on the wall!
#   No more bottles of beer on the wall, no more bottles of beer!
#   Go to the store and buy some more, 3 bottles of beer on the wall!
#
# TIP: I expect you to use a loop.
arr = [3, 2, 1, 0]
lyrics = arr.map do |x|
  if x >= 3
    lyrics = x.to_s + ' bottles of beer on the wall, ' + x.to_s +
    ' bottles of beer!'"\n" + 'Take one down, pass it around, ' +
    (x - 1).to_s + ' bottles of beer on the wall!'
  elsif x == 2
    lyrics = x.to_s + ' bottles of beer on the wall, ' + x.to_s +
    ' bottles of beer!'"\n" + 'Take one down, pass it around, ' +
    (x - 1).to_s + ' bottle of beer on the wall!'
  elsif x == 1
    lyrics = x.to_s + ' bottle of beer on the wall, ' + x.to_s +
    ' bottle of beer!'"\n" + 'Take one down, pass it around, ' \
    'no more bottles of beer on the wall!'
  else
    lyrics = 'No more bottles of beer on the wall, no more bottles of beer!' \
    "\n" + 'Go to the store and buy some more, ' + arr[0].to_s + ' bottles' \
    ' of beer on the wall!'
  end
end
puts lyrics
