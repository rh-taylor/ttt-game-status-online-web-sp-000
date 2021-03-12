# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row, index 0  
  [3,4,5], #Middle row, 1
  [6,7,8], #Bottom row, 2
  [0,3,6], #Left vert row, 3
  [1,4,7], #Mid vert row, 4
  [2,5,8], #Right vert row, 5
  [0,4,8], #Left diagonal, 6
  [2,4,6], #Right diagonal, 7
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combo|  #|win_combo| is a placeholder
    win_index_1 = win_combo[0]  #win_combo[0], [1], and [2] each stand for one of the three indexes that make a winning index?
    win_index_2 = win_combo[1]  #win_index grabs each index (individual spot on board) that composes a win
    win_index_3 = win_combo[2]
    
    position_1 = board[win_index_1]  #load the value of the board at win_index_1
    position_2 = board[win_index_2]  #load the value of the board at win_index_2
    position_3 = board[win_index_3]  #Load the value of the board at win_index_3
    
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combo  #if all three positions contain an "X" or "O,"
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo  #return the win_combination indexes that won
    end
  end
  return false #if the conditions are not met, return false(?)
end

def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end



