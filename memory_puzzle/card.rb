class Card
    attr_reader :face_val, :state

    def initialize(face_val)
        @state = hidden
        @face_val = face_val
        alpha = ("a".."z").to_a
    end


    def hide
        self.state = hidden
    end

    def reveal
        self.state = shown
    end

    def ==(other_card)
        self.face_val == other_card.face_val
    end


end