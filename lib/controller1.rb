class TicTacToeController
    def initialize(model, view)
      @model = model
      @view = view
      @model.add_observer(@view)
    end

    def play
      player = 'X'
      loop do
        @view.display_board(@model.board)
        puts "Player #{player}, enter the row (0, 1, or 2):"
        row = gets.chomp.to_i
  
        puts "Player #{player}, enter the column (0, 1, or 2):"
        col = gets.chomp.to_i
  
        if valid_move?(row, col) && @model.place_mark(row, col, player)
          if @model.check_win(player)
            @view.display_result("Player #{player} wins!")
            break
          elsif @model.check_draw
            @view.display_result("It's a draw!")
            break
          end
          player = (player == 'X') ? 'O' : 'X'
        else
          puts "Invalid move. Try again."
        end
      end
    end
  
    def valid_move?(row, col)
      (0..2).include?(row) && (0..2).include?(col) && @model.board[row][col].nil?
    end  
  end