module Math_game
  class Turns
    def initialize player

      puts "----- #{player.name}'s TURN -----"
      current_question = Questions.new

      puts "#{player.name}: #{current_question.question}"
      @answer = gets.chomp.to_i
      
      if current_question.correct? @answer
        puts "#{player.name}: CORRECT!"
        
      else
        player.lose_life
        puts "#{player.name}: WRONG!"
      end

    end
  end
end