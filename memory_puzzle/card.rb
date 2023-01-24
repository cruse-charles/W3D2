require_relative 'board'

class Card
    attr_reader :face_val, :state
    @@all_cards = []

    def initialize
        alpha = ("a".."z").to_a
        face_val = alpha.sample
        @state = "hidden"
        @face_val = [face_val]
        @@all_cards << self
    end

    
    # def self.shuffle
    #     Board.size.times do
    #         self.new 
    #     end
        
    # end


    def hide
        self.state = "hidden"
    end


    def reveal
        self.state = "shown"
    end


    def ==(other_card)
        self.face_val == other_card.face_val
    end


end