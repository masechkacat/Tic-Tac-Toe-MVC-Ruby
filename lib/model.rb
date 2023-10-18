require 'observer'

class TicTacToeModel
    include Observable
    attr_reader :board
  
    def initialize
      @board = Array.new(9, nil)
    end

    def place_mark(index, mark)
      if @board[index].nil? && mark
        @board[index] = mark
        changed
        notify_observers(self, index, mark)
        true
      end
    end
    
  def check_win(mark)
    winning_combinations = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8],
      [0, 3, 6], [1, 4, 7], [2, 5, 8],
      [0, 4, 8], [2, 4, 6]
    ]

    winning_combinations.each do |combination|
      if combination.all? { |index| @board[index] == mark }
        return true
      end
    end
    false
  end

  def check_draw
    @board.none? { |cell| cell.nil? }
  end
end
  