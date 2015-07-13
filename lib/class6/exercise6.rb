#!/usr/bin/env ruby
#
# 5 points
#
# Replace the `database` and `load` methods with your solutions from exercise 5.
#
# Write a program that, when given both a key and a value, updates the database
# by adding a new key-value pair:
#
#   $ ruby exercise6.rb friend 'Paul McCartney'
#   Updated 1 key-value pair in /Users/tim/sea-c21-ruby/lib/class6/database.yml
#   :friend => "Paul McCartney"
#
# Or modifying an existing key-value pair:
#
#   $ ruby exercise6.rb name 'John Lennon'
#   Updated 1 key-value pair in /Users/tim/sea-c21-ruby/lib/class6/database.yml
#   :name => "John Lennon"
#
# TIP: How do you merge two Hashes together?

require 'yaml'

def database
  File.absolute_path(File.dirname(__FILE__) + ('/database.yml'))
end

def load
  filename = database
  read_hash = File.read filename
  YAML.load read_hash
end

def save
  filename = database
  File.open filename, 'w' do |f|
    f.write person.to_yaml
  end
end

def find(key)
  person[key]
end

def update(key, value)
  # key + value # fix me
  result = find(key)

  if result
    person[key] = value
  else
    person.merge(key => value)
  end
end

person = load
puts person

input1, input2 = ARGV

abort 'Usage: exercise5.rb KEY VALUE' unless input1 && input2

update(input1, input2)
save

puts "Updated 1 key-value pair in #{database}"
puts ":#{input1} => #{input2.inspect}"
