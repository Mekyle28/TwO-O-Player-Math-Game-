
class Question 
  attr_reader :count
  def initialize
    @count = 1
    @answer = ""
  end

  def new_question (player) 
    num1 = rand(1..20)
    num2 = rand(1..20)
    @count += 1
    @answer = (num1 + num2).to_s
    "#{player}: What does #{num1} + #{num2} equal?" 
  end

  def check_answer(input)
    if (input == @answer) 
      return true
    end
    false
  end

end

