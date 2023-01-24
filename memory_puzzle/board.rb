class Board
  attr_reader :size

  def initialize
    @size = 4 * 4  #maybe change to 5 * 5 later
    @grid = Array.new(5) { Array.new(5) {[]} }
  end


  def populate
    rand_col = rand(1...@grid.length)
    rand_row = rand(1...@grid.length)
    i = @size/2

    i.times do 
      rand_card = Card.new
      @grid[rand_row][rand_col] << rand_card.face_val if @grid[rand_row][rand_col].empty? 
    end
  end


  def render

  end


  def won?

  end


  def reveal

  end


end