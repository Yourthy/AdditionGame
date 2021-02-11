require "./player.rb"
require "./question.rb"


class Game
    attr_accessor :result
    def initialize(player_1, player_2)
        @player_1 = player_1
        @player_2 = player_2
        @current_player = player_1
    end

    def start
        @player_1.lives = 3
        @player_2.lives = 3
        p @player_1

        puts "----- Let the games begin!-----"
        new_turn
    end

    def new_turn
        puts "==========="
        puts "-#{@current_player.name} ready?" 
        question = Question.new
        result = question.ask

        if !result
            @current_player.lose_life
        end


        if @current_player.game_over
            end_game
        else
            puts "You have #{@current_player.lives}/3 lives left"
            switch_turn
        end
    end
    
    def switch_turn
        @current_player = @player_1 == @current_player ? @player_2 : @player_1
        new_turn
    end

    def end_game
        puts "#{@current_player.name} is dead ...."
        puts "==============="
        puts "Rematch? (y/n)"
    end

end