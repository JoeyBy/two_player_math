require 'pry'
=begin
two players

ask player one a question. 
  - generate random two numbers to be added together.
store input from player 1
ask player two a question.
  - generate two new random numbers to be added together.
store input from playe 2

compare input of player one to answer of question
  if not correct player 1 lose one point
compare input of player two to answer of quesiton
  if not correct player 2 lose one point

repeat until player one of player two life = 0
=end

#player's starting life
@life_player_one = 3
@life_player_two = 3

#set
def ask_question
  #includes random number generation in loop. New numbers each round.
@player_one_rand_one = rand(1..20)
@player_one_rand_two = rand(1..20)
@player_two_rand_one = rand(1..20)
@player_two_rand_two = rand(1..20)
  #asks players their questions and collects answer in instane variable.
  puts "player one... You're up!"
  puts "What is #{@player_one_rand_one} + #{@player_one_rand_two}?"
  @answer_player_one = gets.chomp.to_i
  puts "Player two... You're up!"
  puts "What is #{@player_two_rand_one} + #{@player_two_rand_two}?"
  @answer_player_two = gets.chomp.to_i
end

def answer_check
  #if players ones answer is not correct they lose one life.
  if @answer_player_one != @player_one_rand_one + @player_one_rand_two
    @life_player_one -= 1 
  end
  #if player two's answer is not correct they lose one life.
  if @answer_player_two != @player_two_rand_one + @player_two_rand_two
    @life_player_two -= 1
  end
  #prints their current # of lives
  puts "Player one has #{@life_one} lives left!"
  puts "player two has #{@life_two} lives left!"
end

def game_start
  #loop the game until a player score is 0. 
  loop do 
    if (@life_one == 0) || (@life_two == 0) 
      if @life_player_one <= @life_player_two
        puts "player one you lose!"
        break
      else
        puts "player two you lose!"
        break
      end
    end
    ask_question
    answer_check
  end
end


#Start the game. 
game_start

  




