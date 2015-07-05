require_relative 'player'



def game_start
  loop do
    if @player_one.life == 0 || @player_two.life == 0
      if @player_one.life <= @player_two.life
        puts "#{@player_one.name} you lose... womp, womp"
        puts "#{@player_two.name} you win!!!"
        break
      else
        puts "#{@player_two.name} you lose... womp, womp"
        puts "#{@player_one.name} you win!!!"
        break
      end
    end
  @player_one.ask_question 
  @player_two.ask_questiongit
  end
end

puts "Person one... enter your name"
@ident_one = gets.chomp.capitalize
puts "Person two... enter your name"
@ident_two = gets.chomp.capitalize

@player_one = Player.new(@ident_one)
@player_two = Player.new(@ident_two)

puts "Are you ready!?!? (Y/N)"
y_n = gets.chomp.upcase

if y_n == "Y"
  game_start
end

