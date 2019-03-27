class Owner
  attr_accessor :name, :pets
  
  attr_reader :species
  
  @@all = []
  @@count = 0
  
  def initialize(name)
    @name = name 
    @@all << self 
    @@count += 1
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end 
  
  def self.all
    @@all
  end 
  
  def self.count 
    @@count
  end 
  
  def self.reset_all
    @@all = []
  end 
  
  def species
    @species = "human"
  end 
   
  def say_species
    "I am a #{species}."
  end  

  def pets
    @pets
  end 
  
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end 

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end 
  
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end 

  def walks_dogs
    pets[:dogs].each do |dog|
    Dog.mood = "happy"
    end
  end
  
  def play_with_cats
    pets[:cats].each do |cat|
    Cat.mood = "happy"
    end 
  end 
  
  def feed_fish
    pets[:fishes].each do |fish|
    Fish.mood = "happy"
    end 
  end 
  
  def sell_pets
    pets.each do |pet|
    pet.each
    pets.mood = "nervous"
  end
  
  def list_pets
    puts self.pets
  end 

end