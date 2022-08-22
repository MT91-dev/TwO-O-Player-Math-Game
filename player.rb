class Player
  # allows access to the following instanced variables
  attr_accessor :name, :lives

  # initialize the accessed variables
  def initialize(name, lives)
    @name = name
    @lives = lives
  end
end