class Shelter
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        Shelter.all << self
    end

    def self.all
        @@all 
    end
end