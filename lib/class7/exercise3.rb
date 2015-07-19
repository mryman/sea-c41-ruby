#!/usr/bin/env ruby
#
# 5 points
#
# Copy the previous OrangeTree class and extend it with the following method:
#
#   OrangeTree#pick!(amount = 1) #=> Integer or nil
#
#     Returns nil if @fruit is less than the `amount` to pick.
#     Otherwise, subtracts the `amount` from @fruit and returns it's new value.
#     The default `amount` is 1.
#
#     orange_tree = OrangeTree.new
#     orange_tree.fruit      #=> 50
#
#     orange_tree.pick!      #=> 49
#     orange_tree.fruit      #=> 49
#
#     orange_tree.pick!(5)   #=> 44
#     orange_tree.fruit      #=> 44
#
#     orange_tree.pick!(50)  #=> nil
#     orange_tree.fruit      #=> 44

# rubocop:disable TrivialAccessors
class OrangeTree
  attr_accessor :fruit

  def initialize
    @fruit = 50
  end

  def pick!(qty = 1)
    if qty > fruit
      return nil
    else
      self.fruit = fruit - qty
    end
  end
end

tree = OrangeTree.new
puts tree.pick!(33)
puts tree.pick!(80)
