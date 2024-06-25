class Player
  attr_accessor :lives
  def initialize
    @lives = 3
  end

  def loose_a_life
    self.lives = lives - 1
  end
end 

player1 = Player.new

puts player1.lives       # 3
player1.loose_a_life
puts player1.lives       # 2 



# class Player

#   def initialize
#     @lives = 3
#   end

#   def lives
#     puts @lives
#   end

#   def loose_a_life
#     @lives = @lives - 1
#   end
# end 

# player1 = Player.new

# puts player1.lives       # 3
# player1.loose_a_life
# puts player1.lives       # 2 