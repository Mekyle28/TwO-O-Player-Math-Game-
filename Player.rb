
class Player
  attr_accessor :lives
  def initialize
    @lives = 3
  end

  def loose_a_life
    @lives -= 1
  end
end 





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

