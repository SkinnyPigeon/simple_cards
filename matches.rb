require 'pry-byebug'

def hand_pair
  puts case
    when
      @hand[0][0].include?(@hand[1][0])
  end
end


def flop_pair
  puts case
    when
      @flop[0][0].include?(@flop[1][0])
  end
end


def flop_matches_index_0
  puts case
    when
      @flop[0][0].include?(@hand[0][0])
    when
      @flop[1][0].include?(@hand[0][0])
  end
end


def flop_matches_index_1    
  puts case
    when
      @flop[0][0].include?(@hand[1][0])  
    when
      @flop[1][0].include?(@hand[1][0])
  end
end


def threes
  puts case
    when
      (hand_pair && flop_matches_index_0) == true
      "three"
    when
      (hand_pair && flop_matches_index_1) == true
      "three"      
  end
end 


def two_pair
  puts case
    when
      (hand_pair == true) && (flop_pair == true)
      print "two pairs"
  end
end












