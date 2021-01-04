def newgame
    system "clear"
    $board = [[' ',' ',' '],[' ',' ',' '],[' ',' ',' ']] ### I imagine global variables aren't ideal
    $player = 'X'
    puts "CLI Tic-Tac-Toe"
    puts "by Mavi"
    turn
end

def turn
    puts "Player #{$player} -- enter row & column of your desired move, separated by a space"
    play = gets.chomp
    $board[play[0].to_i][play[2].to_i] = $player
    printBoard
    checkWin
    $player == 'X' ?  $player = 'O' : $player = 'X'
    turn
end

def printBoard
    puts "\n"
    puts "| #{$board[0][0]} | #{$board[0][1]} | #{$board[0][2]} |"
    puts "| #{$board[1][0]} | #{$board[1][1]} | #{$board[1][2]} |"
    puts "| #{$board[2][0]} | #{$board[2][1]} | #{$board[2][2]} |"
    puts "\n"
end

def checkWin
    lines = [[$board[0][0], $board[1][1], $board[2][2]], [$board[0][2], $board[1][1], $board[2][0]]] ## collecting all rows, columns and diagonals. here are diagonals
    $board.each {|row| lines << row} ## horizontals
    3.times { |i| 
        lines << $board.map{|row| row[i]} 
    } ## verticals
    lines.each{|line|
        if line.uniq.length == 1 && line[0] != " "
            puts "Player #{$player} wins!"
            restartPrompt
        end
    }
end

def restartPrompt
    puts "play again? (y/n)"
    ans = gets.chomp
    if ans == "y"
        newgame
    elsif ans == "n"
        exit(0)
    else
        restartPrompt
    end

end