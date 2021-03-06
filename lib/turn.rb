def input_to_index(input)
  index_value = input.to_i - 1
  return index_value
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board,index)
  if !(position_taken?(board,index)) && index.between?(0,8)
    return true
  else
    return false
  end
end

def move(board,index_value,player = "X")
  board[index_value] = player
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    puts "Invalid response. Try again."
    turn(board)
  end
end


