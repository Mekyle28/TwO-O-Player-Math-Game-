class Question 
  attr_reader :question_count
  def initialize
    @question_count = 1
    question = ""
    @answer = ""
  end

  def new_question (player) 
    num1 = rand(1..20)
    num2 = rand(1..20)
    @question_count += 1
    @answer = (num1 + num2).to_s
    puts "#{player}: What does #{num1} + #{num2} equal?" 
  end

  def check_answer(input)
    if (input == @answer) 
      return puts "Yay, you got it right!"
      
    end
    puts "Sorry, that is incorrect"
  end

  def answer
    puts @answer
  end

end

questions = Question.new
puts questions.question_count
questions.new_question("player1")
questions.check_answer("11")
questions.check_answer("22")
questions.new_question("player2")

questions.answer


# Question.check_answer(input)