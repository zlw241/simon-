class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1 
    @seq = []
    @game_over = false 
  end

  def play
    until game_over == true 
      take_turn 
    end 
    game_over_message
    reset_game
  end 


  def take_turn
    show_sequence
    require_sequence
    self.sequence_length += 1
    round_success_message
  end

  def show_sequence
    add_random_color

  end

  def require_sequence

  end

  def add_random_color
    color = COLORS[rand(0..COLORS.length-1)]
    self.seq << color 

  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    self.sequence_length = 1
    self.seq = []
    self.game_over = false
  end
end
