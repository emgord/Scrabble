module Scrabble
  class TileBag

    attr_reader :tiles

    def initialize
      @tiles = create_new_tile_bag
    end

    def create_new_tile_bag
      letter_string = "A"*9 + "B"*2 + "C"*2 + "D"*4 + "E"*12 + "F"*2 + "G"*3 + "H"*2 + "I"*9 + "J"*1 + "K"*1 + "L"*4 + "M"*2 + "N"*6 + "O"* 8 + "P"*2 + "Q"*1 + "R"*6 + "S"*4 + "T"*6 + "U"*4 + "V"*2 + "W"*2 + "X"*1 + "Y"*2 + "Z"*1
      return letter_string.split("").shuffle
    end

    def draw_tiles(num)
      @tiles.pop(num)
    end

    def tiles_remaining
      @tiles.length
    end
  end
end
