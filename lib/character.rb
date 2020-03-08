





class Character 
    
    attr_accessor :name, :birth_year, :eye_color, :gender, :hair_color, :height, :mass, :skin_color 
    @@all = []

    def initialize(name, birth_year, eye_color, hair_color, gender, height, mass, skin_color)
        @name= name
        @birth_year = birth_year
        @eye_color = eye_color
        @hair_color = hair_color
        @gender = gender
        @height = height
        @mass = mass
        @skin_color = skin_color
        @@all << self
    end

    def self.all
        @@all
    end

end