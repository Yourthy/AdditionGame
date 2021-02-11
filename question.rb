class Question
    def initialize
        @num_1 = rand(1..10).to_i
        @num_2 = rand(1..10).to_i
    end

    def ask
        puts "What does #{@num_1} plus #{@num_2} equal?"
        @answer = gets.chomp
    
        if(@num_1 + @num_2 === @answer.to_i)
            puts "You got it guy!"
            true
        elsif
            puts "Hahahah you srs? You Wrong ahell!"
            false
        end
    end
end
