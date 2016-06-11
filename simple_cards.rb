require './matches.rb'


suits = ["#", "@", "!", "^"]
numbers = ["1", "2", "3"]
@pack = numbers.product(suits)
@pack.shuffle!



def hand(cards = 2)
  @pack.pop(cards)
end

@hand = hand.sort!

def flop (cards = 2)
  @pack.pop(cards)
end

@flop = flop.sort!







system("clear")
print @pack.join(" ")
puts
print @hand.join(" ")
puts
print @flop.join(" ")
puts
two_pair









