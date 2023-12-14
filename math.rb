class MathQuestion

  attr_reader :question, :answer

  def initialize()
    random1 = rand(1..20)
    random2 = rand(1..20)
    @question = "What is #{random1} + #{random2}"
    @answer = random1 + random2
  end

  def check_answer(player_answer)
    player_answer.to_i == @answer
  end  
end