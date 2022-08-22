class Game

  # allows access to the following instanced variables
  attr_accessor :current_player_turn, :player_one_life, :player_two_life

  # initialize the current players turn and each players life total
  def initialize
    @current_player_turn = 1
    @player_one_life = 3
    @player_two_life = 3
  end 

  # function that updates the players life based on the current player, calls the game over function if either players life total is 0
  def update_player_life(current_player_turn)
    if current_player_turn == 1
      @player_one_life -= 1
    else 
      @player_two_life -= 1
    end
    if @player_one_life == 0 || @player_two_life == 0
      game_over
    end
  end
  
  # function that updates the current players turn
  def update_player_turn(current_player_turn)
    if current_player_turn == 1
      @current_player_turn = 2
    else
      @current_player_turn = 1
    end
    start
  end
  
  # function that starts the game and creates a new instance of the Question class
  def start
    puts "-----------------------------------------------------------------"
    puts "P1: #{@player_one_life}/3 lives. P2: #{@player_two_life}/3 lives."

    # create the players and their starting life
    question = Question.new(current_player_turn)
    if !question.start
      update_player_life(current_player_turn)
    end
    update_player_turn(current_player_turn)
  end

  # function that is called when the game is over and outputs the winning players details
  def game_over
    if @player_one_life == 0
      puts "-----------------------------------------------------------------"
      puts "Player 2 wins the game with #{@player_two_life}/3 lives remaining."
      puts "-------- GAME OVER --------"
      puts "Goodbye!"
      exit(0)
    else
      puts "-----------------------------------------------------------------"
      puts "Player 1 wins the game with #{@player_one_life}/3 lives remaining."
      puts "-------- GAME OVER --------"
      puts "Goodbye!"
      exit(0)
    end
  end
end