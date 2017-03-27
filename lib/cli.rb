class CLI

  def call
    puts "Welcome to TicTacToe"
    begin
      puts "0, 1 or 2 player(s)?"
      players = gets.strip.upcase
      if players == "1"
        puts "first player X? Y/N"
        input = gets.strip.upcase
        if input == "Y"
          game = Game.new(Players::Human.new("X"), Players::Computer.new("O"), Board.new)
        else
          game = Game.new(Players::Human.new("O"), Players::Computer.new("X"), Board.new)
        end
      elsif players == "2"
        puts "first player X? Y/N"
        input = gets.strip.upcase
        if input == "Y"
          game = Game.new(Players::Human.new("X"), Players::Human.new("O"), Board.new)
        else
          game = Game.new(Players::Human.new("O"), Players::Human.new("X"), Board.new)
        end
      elsif players == "0"
        game = Game.new(Players::Computer.new("X"), Players::Computer.new("O"), Board.new)
      end
      game.board.display
      game.play
      puts "Play again? Y/N"
      input = gets.strip.upcase
    end until input == "N"

  end
end