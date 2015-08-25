require_relative 'dictionary'

class Game
  attr_reader :current_player, :other_player, :dictionary
  
  def initialize(player1, player2)
    @current_player = player1
    @other_player = player2
    @dictionary = Dictionary.new("dict.txt")
  end

  def next_player!
    @current_player, @other_player = @other_player, @current_player
  end

  def take_turn(player)
     puts "#{@current_player.name}, choose a letter: "
      loop do
        letter = @current_player.get_letter
        if @dictionary.valid_play?(letter)
          break
        end
      end
  end


end
