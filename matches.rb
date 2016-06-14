require 'pry-byebug'

def hand_pair
  return @hand[0][0].include?(@hand[1][0])
end


def flop_pair_0
  return@flop[0][0].include?(@flop[1][0])
end

def flop_pair_1
  return @flop[0][0].include?(@flop[2][0]) 
end

def flop_pair_2
  return @flop[1][0].include?(@flop[2][0]) 
end

def flop_three
  return flop_pair_0 && flop_pair_1 && flop_pair_2 
end


def hand_matches_index_0

  rules_set = [@hand[0][0].include?(@flop[0][0]),
               @hand[1][0].include?(@flop[0][0])]

  for item in rules_set
    return true if(item)
  end
 
end


def hand_matches_index_1

  rules_set = [@hand[0][0].include?(@flop[1][0]),
              @hand[1][0].include?(@flop[1][0])]
      
  for item in rules_set
    return true if(item)
  end

end


def flop_matches_index_0

  rules_set = [@flop[0][0].include?(@hand[0][0]),
              @flop[1][0].include?(@hand[0][0]),
              @flop[2][0].include?(@hand[0][0])]

  for item in rules_set
    return true if(item)
  end

end


def flop_matches_index_1 

  rules_set = [@flop[0][0].include?(@hand[1][0]),
              @flop[1][0].include?(@hand[1][0]),
              @flop[2][0].include?(@hand[1][0])]   

  for item in rules_set
    return true if(item)
  end

end

def state_pair
  rules_set = [hand_pair,
              flop_pair_0,
              flop_pair_1,
              flop_pair_2,
              flop_matches_index_0,
              flop_matches_index_1]
 
  for item in rules_set
    return true if(item)
  end

end



def threes
  rules_set = [ hand_pair && flop_matches_index_0,
              hand_pair && flop_matches_index_1,
              flop_pair_0 && hand_matches_index_0,
              flop_pair_1 && hand_matches_index_1,
              flop_pair_2 && hand_matches_index_1]

  for item in rules_set
    return true if(item)
  end

end 


def two_pair
  rules_set = [hand_pair && flop_pair_0,
              hand_pair && flop_pair_1,
              hand_pair && flop_pair_2,
              flop_matches_index_1 && flop_matches_index_0]

  for item in rules_set
    return true if(item)
  end

end

def four_of_a_kind
  rules_set = [hand_pair ]

end






def rules
  puts case
  when
    (flop_three == true) || (threes  == true)
    puts "Three of a kind of a kind! "
    return
  when
    (flop_pair_0 == true) || (flop_pair_1 == true) || (flop_pair_2 == true)
    puts "Two pairs "
    return
  when
    state_pair == true
    puts "Pair"
    return
  end
end









