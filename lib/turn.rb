def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if index < 0 || index > 8
        return false
  elsif index >= 0 && index <= 8
      if board[index]!= "X" && board[index] != "O"
        return true
      else
        return false
      end
    end
  end


def input_to_index(input)
  index = input.to_i - 1
end
  
def move(board,index,token = "X")
  board[index] = token
  return board
end

def turn(board)
  token = "X"
  puts "Welcome to Tic Tac Toe!"
  display_board(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  while valid_move?(board,index) == false
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    valid_move?(board,index)
  end
  move(board,index,token)
  display_board(board)
end