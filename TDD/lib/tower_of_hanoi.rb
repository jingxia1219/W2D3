#TOWERS OF HANOI 

class Hanoi
  attr_reader :board
  def initialize(board = [ [3,2,1] , [], [] ])
    @board = board 
  end 
  
  def move(from_tower,to_tower) 
    disc = @board[from_tower].pop 
    @board[to_tower].push(disc)
  end 
  
  def won?
    return true if board[1].size == 3 || board[2].size == 3
    false
  end 
  
  def play 
    puts "Choose a tower"
    print "> " 
    input = gets.chomp
  end 
  
end 