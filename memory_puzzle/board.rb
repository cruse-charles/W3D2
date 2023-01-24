class Board
  attr_reader :size

  def initialize
    @size = 4 * 4  #maybe change to 5 * 5 later
    @grid = Array.new(5) { Array.new(5) {[]} }
  end


  def [](position)
    row, col = position
    @grid[row][col]
  end


  def []=(position, face_val)
    row, col = position
    @grid[row][col] = face_val
  end


  def populate
    @grid[0][1..-1].each do |el|
      i = 0
      el << i
      i += 1
    end
    # rand_col = rand(1...@grid.length)
    # rand_row = rand(1...@grid.length)
    random_coords = Array.new(2) { rand(0...@grid.length) }
    i = @size/2
    # c = 0

    # while c < @size
      i.times do 
        # rand_col = rand(1...@grid.length)
        # rand_row = rand(1...@grid.length)
        rand_card = Card.new

        if self[random_coords].empty?
          self[random_coords] += rand_card.face_val
          self[random_coords] += rand_card.face_val  
          # c += 2
        end

      end
    # end
  end


  def render

  end


  def won?

  end


  def reveal

  end


end