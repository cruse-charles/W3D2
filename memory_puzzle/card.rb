require_relative 'board'

class Card
    attr_reader :face_val
    attr_accessor :hidden

    @@all_cards = []

    def initialize
        alpha = ("a".."z").to_a
        face_val = alpha.sample
        @hidden = true
        @face_val = [face_val]
        @@all_cards << self
        # @board = Board.new
    end

    
    # def self.shuffle
    #     @board.size.times do
    #         self.new
    #     end
        
    # end


    def hide
        self.hidden = true
    end


    def reveal
        self.hidden = false
    end


    def ==(other_card)
        self.face_val == other_card.face_val
    end


end