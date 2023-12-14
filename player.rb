class Player

  attr_reader :name, :lives, :score

  # initialize the starting player state
  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def answer_question(correct)
    if correct
      @score += 1
    else
      @lives -= 1
    end
  end

  def display_score()
    "#{name}: Score - #{score}, Lives - #{@lives}"
  end
  
end