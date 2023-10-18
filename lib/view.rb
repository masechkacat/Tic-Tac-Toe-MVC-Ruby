require 'observer'

class TicTacToeView
    def display_board(board)
      board.each do |row|
        puts row.map { |cell| cell.nil? ? ' ' : cell }.join(' | ')
        puts '---------'
      end
    end

    def update(model, row, col, mark)
      model.board[row][col] = mark
      display_board(model.board)
    end
    
  
    def display_result(result)
      puts result
    end
  end