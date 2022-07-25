class Cell
  attr_reader :row, :column
  
  def initialize(row,column,board)
    @row = row
    @column = column
    @board = board
  end

  def piece 
    if @board[row][column] != nil
      @board[row][column]
    end
  end

  def down
    if row <= 7
      Cell.new(row + 1, column, board)
    end
  end

  def up
    if row >= 0
     Cell.new(row - 1, column, board)
    end
  end

  def left 
    if column >= 0
      Cell.new(row, column - 1, board)
    end
  end

  def right
    if column <= 7
      Cell.new(row, column + 1, board)
    end
  end

  def up_left
    if row >= 0 && column >= 0
      Cell.new(row - 1,column - 1,board)
    end
  end

  def up_right
    if row >= 0 && column <=7 
      Cell.new(row - 1,column + 1,board)
    end
  end

  def down_left
    if row <= 7 && column >= 0
      Cell.new(row + 1,column - 1,board)
    end
  end

  def down_right
    if row <= 7 && column <= 7
      Cell.new(row + 1,column + 1,board)
    end
  end

end