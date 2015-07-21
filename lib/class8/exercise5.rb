#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that acts like a grandfather clock. Given the hour of the day,
# your program will 'DONG!' that many times.
#
# For example:
#
#   $ ruby exercise5.rb 4
#   DONG!
#   DONG!
#   DONG!
#   DONG!

def grandfather_clock(hour, &block)
  if hour == 0
    hour = 12
  elsif hour >= 13
    hour -= 12
  else
    hour
  end

  hour.times do
    block.call
  end
end

input = ARGV[0]

usage = 'Usage: exercise5.rb 1-12 SOUND'

abort usage unless input
abort usage unless input.match(/^\d+$/)
abort usage unless input.to_i.between?(1, 12)

grandfather_clock(input.to_i) do
  puts 'DONG!'
end
