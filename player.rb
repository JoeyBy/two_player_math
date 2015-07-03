class Player
  attr_reader :name
  attr_accessor :life, :points, :random_one, :random_two

  def initialize(name)
    @name = name
    @life = 3
    @points = 0 
  end

  def test_number 
    @random_one + @random_two
  end

  def random_one    
    @random_one = Random.new.rand(1..20)
  end

  def random_two
    @random_two = Random.new.rand(1..20)
  end


  def ask_question
    puts "#{@name}... you're up!"
    puts "What is #{random_one} + #{random_two}?"
    answer = gets.chomp.to_i
      if test_number == answer
        puts "Correct! + 1 point!"
        @points += 1
      else
        puts "Nope! Wrong! - 1 life"
        @life -= 1
      end
    puts "#{@name} has #{@points} points and #{@life} lives left!"
  end

end
