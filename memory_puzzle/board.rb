require_relative 'card'

class Board
  attr_reader :size

  def initialize
    @size = 4 * 4  #maybe change to 5 * 5 later
    @grid = Array.new(5) { Array.new(5) {[]} }
    @cards_fv = []
    # @card_fv = Card.new.face_val
    # @cards_fv << @card_fv
    (@size / 2).times do
      @cards_fv << Card.new.face_val
    end
    @cards_fv += @cards_fv
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
    random_coords = Array.new(2) { rand(1...@grid.length) }
    # i = @size/
    #   i.times do 
    @cards_fv.each do |char|
        if self[random_coords].empty?
          self[random_coords] = char
        else
          while !self[random_coords].empty?
            random_coords = Array.new(2) { rand(1...@grid.length) }
          end
            self[random_coords] = char
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