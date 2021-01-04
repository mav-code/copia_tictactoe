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
end