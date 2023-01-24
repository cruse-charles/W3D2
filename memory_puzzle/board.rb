class Board
  attr_reader :size

  def initialize
    @size = 4 * 4  #maybe change to 5 * 5 later
    @grid = Array.new(5) { [] }
  end


  def populate
    rand_col = rand(1...@grid.length)
    rand_row = rand(1...@grid.length)

    @size.times
  end


  def render

  end


  def won?

  end


  def reveal

  end


end