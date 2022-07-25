require './lib/board'

class Pawn
  def initialize(board)
    while cell < 8 
      board[7][cell] = "P"
      board[1][cell] = "P"
      cell += 1
    end

  end

  def set_up(board)
   
  end
end


