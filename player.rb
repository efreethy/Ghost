require_relative 'game'
require_relative 'dictionary'

class Player
  attr_reader :name, :score
  
  def initialize(name)
    @name = name
  end

  def get_letter
    puts "Input a letter below, "
    letter = gets.chomp
    letter
  end

end
