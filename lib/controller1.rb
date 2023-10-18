class TicTacToeController
  def initialize(model, view)
    @model = model
    @view = view
    @model.add_observer(@view)
    @players = {}
  end

  def start
    puts "Enter Player 1's name:"
    @players['X'] = gets.chomp
    puts "Enter Player 2's name:"
    @players['O'] = gets.chomp
    play
  end

  def play
    player = 'X'
    @view.display_board(@model.board)
    loop do
      break if @model.check_win(player) || @model.check_draw

      puts "#{@players[player]}'s turn.Enter the number of cell"
      index = gets.chomp.to_i

      if (0..8).include?(index) && @model.place_mark(index, player)
        if @model.check_win(player)
          @view.display_result("#{@players[player]} wins!")
          break
        elsif @model.check_draw
          @view.display_result("It's a draw!")
          break
        end
        player = (player == 'X') ? 'O' : 'X'
      else
        @view.display_result("Invalid move. Try again.")
      end
    end
  end
end
