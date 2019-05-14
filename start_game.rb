module Math_game
  class Start_game
    def initialize
      @players = []
      @players << Player.new << Player.new
      @game_over = false
      @number_of_players = 2
    end

    def start
      puts "Starting game..."
      current_player_counter = 0

      while (!@game_over) do
        current_player = @players[current_player_counter]
        next_player_counter = (current_player_counter + 1) % @number_of_players
        next_player = @players[next_player_counter]
        Turns.new current_player

        puts Player.score @players

        if (current_player.life == 0)
          @game_over = true
          puts "#{next_player.name} wins with a score of #{next_player.life}/3"
        end

        current_player_counter = next_player_counter
      end
      
      puts "----- GAME OVER -----"
      puts "Good bye!"

    end
  end
end