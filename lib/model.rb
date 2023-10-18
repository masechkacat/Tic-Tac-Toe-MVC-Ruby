require 'observer'

class TicTacToeModel
    include Observable
    attr_reader :board
  
    def initialize
      @board = Array.new(3) { Array.new(3, nil) }
    end
  
    def place_mark(row, col, mark)
      return false if @board[row][col] || mark.nil?
      @board[row][col] = mark
      if check_win(mark)
        changed 
        notify_observers(self, row, col, mark)
        return true
      elsif check_draw
        changed 
        notify_observers(self, row, col, mark)
        return true
      end
    
      true
    end
  
    def check_win(mark)
        winning_combinations = [
          [[0, 0], [0, 1], [0, 2]],
          [[1, 0], [1, 1], [1, 2]],
          [[2, 0], [2, 1], [2, 2]],
          [[0, 0], [1, 0], [2, 0]],
          [[0, 1], [1, 1], [2, 1]],
          [[0, 2], [1, 2], [2, 2]],
          [[0, 0], [1, 1], [2, 2]],
          [[0, 2], [1, 1], [2, 0]]
        ]
      
        winning_combinations.each do |combination|
          if combination.all? { |row, col| @board[row][col] == mark }
            return true
          end
        end
      
        false
      end
  
    def check_draw
      @board.flatten.none? { |cell| cell.nil? }
    end
  end