WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # Left column
  [1,4,7],  # Middle column
  [2,5,8],  # Right column
  [0,4,8],  # Forward diagonal
  [2,4,6]  # Backward diagonal
]

#helper methods

#display_board creates a blank tic tac toe board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  puts "-----------"
end

#input_to_index converts a user_input to an integer
def input_to_index(input)
  index = input.to_i - 1
end

#move allows "X" player in the bottom right and "O" in the top left
def move(board, position, player)
  board[position] = "#{player}"
end

#valid_move? returns true/false based on index
def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board,index)
    true
  else
    false
  end
end