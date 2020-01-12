# DISPLAY BOARD

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#TURN

def turn(board)
  puts "Please enter 1-9:"
  x = input_to_index(gets.strip)
  if valid_move?(board, x) == true
  move(board, x, value = "X")
  else puts "please put valid move"
  turn(board)
  end
  display_board (board)
end

# INPUT TO INDEX

def input_to_index(input)
    input.to_i - 1
end

def move (board, input, value = "X")
  board[input] = value
end

#VALID MOVE

def thing(input)
  if input.between?(0, 8)
  true
  else false
end
end

def position_taken?(board, input)
  if board[input] == "X" ||  board[input] == "O"
    true
  else false
  end
end
    
def valid_move?(board, input)
thing(input) && !position_taken?(board, input)
end



