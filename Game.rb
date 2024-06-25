require './Player'
require './Question'

class Game

  def initialize 
    @player1 = Player.new
    @player2 = Player.new
    @questions = Question.new
    @game_active = true
  end

  def start
    while (@game_active) do
      puts @questions.count.odd? ? @questions.new_question("Player1") : @questions.new_question("Player2")
      
      answer = gets.chomp
      if @questions.check_answer(answer)
        puts "Yay, you got it right!"
      else
        @questions.count.odd? ? @player1.loose_a_life : @player2.loose_a_life
        puts "Sorry, that is incorrect"
      end
      
      if (@player1.lives == 0 || @player2.lives == 0) 
        puts "------ GAME OVER -------"
        puts "Good bye"
        @game_active = false
      else
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        puts "------ NEW TURN ------"
      end
    end
  end

end

