require "swapi.rb"

class CLI

    def initialize
        @SWAPI = SWAPI.new
    end
#character.name} #{character.gender} #{character.height} #{character.mass} #{character.birth_year} #{character.eye_color} #{character.hair_color} #{character.skin_color}"
    def call 
        input = ""
        while input !="exit"
        puts " "
        puts "Welcome to the Star Wars Quote Finder."
        puts " "
        puts "For information on whoever said the quote, press number 1-10. Learn about their names, gender, height, mass, birth year, eye & hair & skin color!"
        puts " "
        puts "1: No. I am your father."
        puts "2: It's a trap!"
        puts "3. These aren't the droids you are looking for."
        puts "4: The greatest teacher, failure is."
        puts "5: Rrrrrrrrrr-ghghghghghghghghghghg."
        puts "6: You're my only hope."
        puts "7: Chewie, we're home."
        puts "8: POWERRRR! UNLIMITED POWER!"
        puts "9: You underestimate my power!"
        puts "10: I find your lack of faith disturbing."
        puts " "
        puts "To quit, type 'exit'. May the force be with you."
        puts " "
        
        input = gets.strip 
      
        case input 
        when "1"
              one
        when "2"
              two
        when "3"
              three
        when "4"
              four
        when "5"
              five
        when "6"
              six
        when "7"
              seven
        when "8"
              eight
        when "9"
              nine
        when "10"
              ten 
        end
    end
    end

    def one 
        puts @SWAPI.get_character(4)
    end

    def two
        puts @SWAPI.get_character(27)
    end

    def three
        puts @SWAPI.get_character(10)
    end

    def four 
        puts @SWAPI.get_character(20)
    end

    def five
        puts @SWAPI.get_character(13)
    end 

    def six 
        puts @SWAPI.get_character(5)
    end 

    def seven 
        puts @SWAPI.get_character(14)
    end 

    def eight 
        puts @SWAPI.get_character(21)
    end 

    def nine 
        puts @SWAPI.get_character(11)
    end 

    def ten 
        puts @SWAPI.get_character(4)
    end 
end