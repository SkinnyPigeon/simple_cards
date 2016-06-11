require './matches.rb'
require 'pry-byebug'

suits = ["#", "@", "!", "^"]
numbers = ["A", "2", "3", "4", "5","6", "7", "8", "9", "10", "J", "Q", "k"]
@pack = numbers.product(suits)
@pack.shuffle!
@pot = 0


def hand(cards = 2)
  @pack.pop(cards)
end

@hand = hand.sort!

def flop (cards = 3)
  @pack.pop(cards)
end

@flop = flop.sort!

def turn
  @pack.pop
end

@turn = turn

def river
  @pack.pop
end

@river = river

def place_bets
  puts "Please enter bets: "
  answer = gets.chomp.to_i
  @pot += answer
  puts "The pot is #{@pot}"
end



system("clear")
print @hand.join(" ")
puts
print @flop.join(" ")
puts
rules









