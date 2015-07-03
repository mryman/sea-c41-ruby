# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!

phrase = 'Nana: HI SWEETIE! GIVE NANA A KISS!'
puts phrase
byecount = 0

loop do
  phrase = gets.chomp
  if phrase == 'BYE'
    byecount += 1
  else
    byecount = 0
  end
  break if byecount == 3

  if phrase != phrase.upcase
    puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
    byecount = 0
  elsif (phrase == phrase.upcase) && (phrase != 'BYE')
    year = rand(21) + 1930
    puts 'Nana: NOT SINCE ' + year.to_s + '!'
    byecount = 0
  else
    puts 'Nana: HOW\'S SCHOOL GOING?'
  end
end

puts 'Nana: BYE SWEETIE!'
