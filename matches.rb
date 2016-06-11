require 'pry-byebug'

def hand_pair
  case
    when
      @hand[0][0].include?(@hand[1][0])
      return true
  end
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
  case
    when
      hand_pair == true
      puts "pair"
    when
      flop_pair_0 == true
      puts "pair"
    when
      flop_pair_1 == true
      puts "pair"
    when
      flop_pair_2 == true
      puts "pair"
    when
      flop_matches_index_0 == true
      puts "pair"
    when
      flop_matches_index_1 == true
      puts "pair"
  end
end

def threes
  case
    when
      hand_pair && flop_matches_index_0 == true
      puts "Three of a kind"
    when
      hand_pair && flop_matches_index_1 == true
      puts "Three of a kind" 
    when
      flop_pair_0 && hand_matches_index_0 == true
      puts "Three of a kind"
    when
      flop_pair_1 && hand_matches_index_1 == true
      puts "Three of a kind"
    when
      flop_pair_2 && hand_matches_index_1 == true
      puts "Three of a kind"
  end
end 


def two_pair
  case
    when
      hand_pair && flop_pair_0 == true
      puts "two pairs"    
    when
      hand_pair && flop_pair_1 == true
      puts "two pairs"    
    when
      hand_pair && flop_pair_2 == true
      puts "two pairs"
    when
      flop_matches_index_1 && flop_matches_index_0 == true
      puts "two pairs"
  end
end








def rules
  puts case
  when
    (flop_three) || (threes)  == true
    puts "Three of a kind of a kind! "
  when
    (flop_pair_0) || (flop_pair_1) || (flop_pair_2) == true
    puts "Two pairs"
  when
    state_pair == true
    puts "Pair"
  end
end









