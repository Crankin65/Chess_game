class Board
  def initialize
    rows = 8
    columns= 8

    Array.new(rows).map do |row|
      Array.new(columns)
    end
    
    #Create array of 63 (8x8) board
  end

  def display
    #Create string display
  end

  def win_lose
    #Create win/lose condition 
  end

  def save
    #create save board function
  end
end