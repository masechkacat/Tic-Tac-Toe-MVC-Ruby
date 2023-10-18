require 'observer'

class TicTacToeView
  def display_board(board)
  #system 'clear'  # screen cleaner
    puts " "
    puts " #{board[0] || ' '} | #{board[1] || ' '} | #{board[2] || ' '}                    0 | 1 | 2 "
    puts '-----------                 -------------'
    puts " #{board[3] || ' '} | #{board[4] || ' '} | #{board[5] || ' '}                    3 | 4 | 5"
    puts '-----------                 -------------'
    puts " #{board[6] || ' '} | #{board[7] || ' '} | #{board[8] || ' '}                    6 | 7 | 8"
    puts " "
  end

  def update(model, index, mark)
    model.board[index] = mark
    display_board(model.board)
  end

  def display_result(result)
    puts result
  end
end
