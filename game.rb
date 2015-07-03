require_relative 'player'


@player_one = Player.new("Fred")
@player_two = Player.new("Susan")

def game_start
  loop do
    if @player_one.life == 0 || @player_two.life == 0
      if @player_one.life <= @player_two.life
        puts "#{@player_one.name} you lose!"
        break
      else
        puts "#{@player_two.name} you lose!"
        break
      end
    end
  @player_one.ask_question 
  @player_two.ask_question
  end
end


game_start