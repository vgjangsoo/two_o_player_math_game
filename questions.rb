module Math_game
  class Questions
    attr_accessor :answer, :first_number, :second_number
    def initialize 
      @first_number = rand(1..20)
      @second_number = rand(1..20)
      @answer = @first_number + @second_number
    end

    def question
      "What does #{first_number} plus #{second_number} equal?"
    end

    def correct? answer
      @answer == answer
    end
  end
end

