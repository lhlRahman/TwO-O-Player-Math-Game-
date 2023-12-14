require "./player.rb"

class Game

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player_index = 0
  end

  def game_loop
    loop do
      active_player = @players[@current_player_index]
      other_player = @players[1 - @current_player_index]

      puts "---- NEW TURN -----"
      
      # create a new instance of MathQuestion. Generates new question each time.
      question = MathQuestion.new

      # prints player name, and question based on player turn.
      puts "#{active_player.name}: #{question.question}"
      
      # gets & stores player answer
      player_answer = gets.chomp

      # since question is an new instance of MathQuestion it has the check_answer fn that take in player_answer.
      if question.check_answer(player_answer)
        puts "GOOD JOB!!"
        active_player.answer_question(true)
      else
        puts "Incorrect! The correct answer was #{question.answer}."
        active_player.answer_question(false)
      end
    
      puts "#{active_player.display_score} | #{other_player.display_score}"

      if active_player.lives == 0
        puts "#{other_player.name} wins with a score of #{other_player.score}"
        break
      end
      @current_player_index = 1 - @current_player_index
    end
    puts "---- GAME OVER ----"
  end 
end