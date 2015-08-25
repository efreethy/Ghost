require_relative 'player'
require_relative 'game'

evan = Player.new("Evan")
sarah = Player.new("Sarah")

game = Game.new(evan, sarah)

puts "Lets Begin"
puts game.current_player.name
puts game.other_player.name

loop do
  game.take_turn(game.current_player)
  game.next_player!
  puts game.dictionary.fragment
  puts "Dictionary has #{game.dictionary.contents.length} items"
  if game.dictionary.is_over
    puts "#{game.current_player.name} wins!!"
    break
  end
end
