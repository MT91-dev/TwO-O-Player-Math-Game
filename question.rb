class Question

  # allows access to the instanced variable current_player_turn
  attr_accessor :current_player_turn

  def initialize(current_player_turn)
    @current_player_turn = current_player_turn
  end

  # function that starts the game and picks the two randomly selected numbers
  def start
    num1 = rand(1..20)
    num2 = rand(1..20)

    puts "------ NEW TURN ------"
    puts "P#{current_player_turn}: What is #{num1} + #{num2}?"
    print "> "

    # Get answer from prompting the user and convert to integer with to_i method
    answer = $stdin.gets.chomp.to_i

    # Based on answer given by player, compare and logs the correct statement to the players
    if answer == num1 + num2
      puts "Player #{current_player_turn}: YES, you are Correct!"
      return true
    else 
      puts "Player #{current_player_turn}: Seriously?! Where did you learn math? INCORRECT!"
      return false
    end
  end

end