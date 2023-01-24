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


  def borders
    @grid[0][1..-1].each do |el|
      i = 0
      el << i
      i += 1
    end

    @grid[1..-1].each do |row|
      i = 0
      row[0] << i 
      i += 1
    end
  end

  def populate
    random_coords = Array.new(2) { rand(0...@grid.length) }
    i = @size/2
      i.times do 
        rand_card = Card.new

        if self[random_coords].empty?
          self[random_coords] += rand_card.face_val
        else
          while !self[random_coords].empty?
            random_coords = Array.new(2) { rand(0...@grid.length) }
          end
            self[random_coords] += rand_card.face_val
        end
      end
  end


  def render

  end


  def won?
    return "You win!" if @grid.none? { |arr| arr.empty?}
  end


  def reveal(guessed_pos)

  end


end