require './lib/pieces/Pawn'

class Board
  attr_accessor :rows, :columns,:turn

  def initialize
    @rows = 9
    @columns = 9
    @turn = 0
    
  end

  def initial_board_grid
    Array.new(rows).map do |row|
      Array.new(columns)
    end
  end

  def board
    @board ||= initial_board_grid
  end

  def initial_setup_letters
    #set letter index on bottom
    alphabet = "ABCDEFGHI".split('')
    entry = 0

    # @board[8].map do |number|
      while entry < 8
        @board[8][entry] = alphabet[entry] + " "
        entry += 1
      end
    # end
  end

  def initial_setup_numbers
    #set number index on right
    number = 8
    row = 0
    while row < 8
      @board[row][8] = "#{number}" + " "
      number -= 1
      row += 1
    end
  end

 
  def display
     #create visible display
    space_rows = board.map do |row| 
      '|' + row.map { |cell| cell == nil ? '  ' : cell }.join('|') + '|'
    end

    space_rows
  end

  def puts_display
    puts display
  end


  def win_lose
    #Create win/lose condition 
  end

  def save
    #create save board function
  end
end

new_game = Board.new
new_game.initial_board_grid
new_game.board
new_game.initial_setup_numbers
new_game.initial_setup_letters
#Pawn.new(Board.board)
new_game.puts_display