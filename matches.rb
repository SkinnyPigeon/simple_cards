require 'pry-byebug'

def hand_pair
  puts case
    when
      @hand[0][0].include?(@hand[1][0])
      return true
  end
end


def flop_pair
  puts case
    when
      @flop[0][0].include?(@flop[1][0])
      return true
  end
end


def flop_matches_index_0
  puts case
    when
      @flop[0][0].include?(@hand[0][0])
      return true
    when
      @flop[1][0].include?(@hand[0][0])
      return true
  end
end


def flop_matches_index_1    
  puts case
    when
      @flop[0][0].include?(@hand[1][0])
      return true  
    when
      @flop[1][0].include?(@hand[1][0])
      return true
  end
end

def state_pair
  puts case
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
  puts case
    when
      hand_pair && flop_matches_index_0 == true
      puts "three"
    when
      hand_pair && flop_matches_index_1 == true
      puts "three"      
  end
end 


def two_pair
  puts case
    when
      hand_pair && flop_pair == true
      puts "two pairs"
  end
end
 
def rules
  puts case
  when
    threes == true
    "three"
  when
    two_pair == true
    "two pairs"
  when
    state_pair == true
    "pair"
  end
end









