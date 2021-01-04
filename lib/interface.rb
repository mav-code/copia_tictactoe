def newgame
    system "clear"
    $board = [[' ',' ',' '],[' ',' ',' '],[' ',' ',' ']]
    $player = 'X'
    puts "CLI Tic-Tac-Toe"
    puts "by Mavi"
    turn
end

def turn
    puts "Player #{$player} -- enter row & column of your desired move, separated by a space"
    play = gets.chomp
    $board[play[0].to_i - 1][play[2].to_i - 1] = $player ### string converted into 0-indexed integers
    printBoard
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