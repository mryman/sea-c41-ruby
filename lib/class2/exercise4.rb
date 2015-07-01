# 5 points
#
# Write a program that asks for a person's first name, then middle name,
# then last name, and then greets the person using their full name.
#
# Here's how the program must work:
#
#   $ ruby exercise4.rb
#   What's your first name?
#   Samuel
#   What's your middle name?
#   Leroy
#   What's your last name?
#   Jackson
#   Nice to meet you, Samuel Leroy Jackson.
puts 'What\'s your first name?'
name = gets.chomp
puts 'What\'s your middle name?'
name2 = ' ' + gets.chomp
puts 'What\'s your last name?'
name3 = ' ' + gets.chomp
fullname = name + name2 + name3
puts 'Nice to meet you, ' + fullname + '.'
