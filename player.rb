module Math_game
  class Player
    attr_reader :life, :name
    @@number_of_players = 0

    def initialize
      @@number_of_players += 1
      @name = "Player #{@@number_of_players}"
      @life = 3
    end

    def lose_life
      @life -= 1
    end

    def player_score
      "#{@name}: #{@life}/3"
    end
    
    def self.score players
      "#{players[0].player_score} vs #{players[1].player_score}"
    end
  end
end

