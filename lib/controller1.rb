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
      puts "Player #{player}, enter the number of cell"
      index = gets.chomp.to_i

      if (0..8).include?(index) && @model.place_mark(index, player)
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
end
