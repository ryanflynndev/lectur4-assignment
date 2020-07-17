class Animal
    attr_accessor :type, :name, :speak, :owner, :shelter
    @@all = []

    def initialize(type, name, speak, owner=nil, shelter=nil)
        @type = type
        @name = name
        @speak = speak
        @owner = owner
        @shelter = shelter 
        Animal.all << self
    end

    ## a class method to find all animals who dont have a home yet :(

    def self.all 
        @@all
    end

    def say_hello
        puts "#{self.name} says #{self.speak}!"
    end

    def self.find_all_in_shelter 
        self.all.select{|animal| animal.shelter != nil}
    end 

    def self.find_all_adopted
        self.all.select{|animal| animal.owner != nil }
    end 

    def self.find_by_shelter(shelter_name)
        self.find_all_in_shelter.select{|animal| animal.shelter.name == shelter_name}
    end
end