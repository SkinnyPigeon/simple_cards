require 'pry-byebug'

def hand_pair
  case
    when
      @hand[0][0].include?(@hand[1][0])
      return true
  end
end


def flop_pair
  case
    when
      @flop[0][0].include?(@flop[1][0])
      return true
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
  end
end

def state_pair
  case
    when
      hand_pair == true
      puts "pair"
    when
      flop_pair == true
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
      puts "three"
    when
      hand_pair && flop_matches_index_1 == true
      puts "three" 
    when
      flop_pair && hand_matches_index_0 == true
      puts "three"
    when
      flop_pair && hand_matches_index_1 == true
      puts "three"
  end
end 


def two_pair
  case
    when
      hand_pair && flop_pair == true
      puts "two pairs"
    when
      flop_matches_index_1 && flop_matches_index_0 == true
      puts "two pairs"
  end
end


def rules
  puts case
  when
    threes 
    "three"
  when
    two_pair 
    "two pairs"
  when
    state_pair 
    "pair"
  binding.pry 
  end
end









