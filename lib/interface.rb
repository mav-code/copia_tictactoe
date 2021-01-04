def newgame
    system "clear"
    $board = [['','',''],['','',''],['','','']]
    $player = 'X'
    puts "CLI Tic-Tac-Toe"
    puts "by Mavi"
    turn
end

def turn
    puts "Player #{$player} -- enter row & column of your desired move"
    play = gets.chomp
    $board[play[0].to_i][play[2].to_i] = $player
    $player == 'X' ?  $player = 'O' : $player = 'X'
    turn
end