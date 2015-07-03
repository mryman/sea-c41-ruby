# 5 points
#
# Write a program that displays all the leap years between 1900 and 2000.
#
# Leap years are years divisible by 4 (e.g. 1984).
#
# Years divisible by 100 are not leap years (e.g. 1900) unless they are also
# divisible by 400 (e.g. 2000).
#
# TIP: I expect you to use a loop and a few modulo operations.
years = [1900..2000]
leapyrs = years.map {|e|
  ((e%4 == 0) && (e%100 != 0)) || ((e%4 == 0) && (e%100 == 0) && (e%400 == 0))
  }
puts leapyrs
