class Player 
    attr_accessor :lives, :name

    def initialize(name)
        @name = name
        @lives = 3
        puts "you have #{@lives}/3 lives"
    end

    def lose_life
        @lives = @lives -1
        puts "you now have #{@lives}/3 lives"
    end

    def game_over
        @lives == 0
    end
end