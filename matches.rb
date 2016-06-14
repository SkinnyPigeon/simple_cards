require 'pry-byebug'

def hand_pair
  return @hand[0][0].include?(@hand[1][0])
end


def flop_pair_0
  case
    when
      @flop[0][0].include?(@flop[1][0])
      return true
  end
end

def flop_pair_1
  case
    when
      @flop[0][0].include?(@flop[2][0]) 
      return true
  end
end

def flop_pair_2
  case
    when
      @flop[1][0].include?(@flop[2][0]) 
      return true
  end
end

def flop_three
  puts case
    when flop_pair_0 && flop_pair_1 && flop_pair_2 == true
    "Three of a kind of a kind"
  end
end


def hand_matches_index_0
  case
    when
      @hand[0][0].include?(@flop[0][0])
      return true
    when
      @hand[1][0].include?(@flop[0][0])
      return true
  end
end


def hand_matches_index_1
  case
    when
      @hand[0][0].include?(@flop[1][0])
      return true
    when
      @hand[1][0].include?(@flop[1][0])
      return true
  end
end


def flop_matches_index_0
  case
    when
      @flop[0][0].include?(@hand[0][0])
      return true
    when
      @flop[1][0].include?(@hand[0][0])
      return true
    when
      @flop[2][0].include?(@hand[0][0])
      return true  
  end
end


def flop_matches_index_1    
  case
    when
      @flop[0][0].include?(@hand[1][0])
      return true  
    when
      @flop[1][0].include?(@hand[1][0])
      return true
    when
      @flop[2][0].include?(@hand[1][0])
      return true  
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
#   case
#     when
#       hand_pair == true
#       return true
#     when
#       flop_pair_0 == true
#       return true
#     when
#       flop_pair_1 == true
#       return true
#     when
#       flop_pair_2 == true
#       return true
#     when
#       flop_matches_index_0 == true
#       return true
#     when
#       flop_matches_index_1 == true
#       return true
#   end
# end

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









