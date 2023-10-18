require 'observer'

class TicTacToeView
  def display_board(board)
    system 'clear' or system 'cls' # Очистка экрана
    puts " #{board[0] || ' '} | #{board[1] || ' '} | #{board[2] || ' '}"
    puts '-----------'
    puts " #{board[3] || ' '} | #{board[4] || ' '} | #{board[5] || ' '}"
    puts '-----------'
    puts " #{board[6] || ' '} | #{board[7] || ' '} | #{board[8] || ' '}"
  end

  def update(model, index, mark)
    model.board[index] = mark
    display_board(model.board)
  end

  def display_result(result)
    puts result
  end
end
