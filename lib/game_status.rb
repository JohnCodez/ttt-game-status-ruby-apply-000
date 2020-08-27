# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
  def won?(board)
    WIN_COMBINATIONS.each do |combo|
      i1 = combo[0]
      i2 = combo[1]
      i3 = combo[2]
      
      position1 = board[i1]
      position2 = board[i2]
      position3 = board[i3]
      
      if position1 == "X" && position2 == "X" && position3 == "X"
        return combo
      elsif position1 == "O" && position2 == "O" && position3 == "O"
        return combo 
      end
    end
    return false
  end
  
  
  def full?(board)
    board.all? {|index| index == "X" || index == "O"}
  end
  
  def draw?(board)
    if won?(board)
      return false
    elsif !full?(board)
      return false
    else !won?(board) && full?(board)
      return true
    end
  end
  
  
  def over?(board) 
    if won?(board) || draw?(board) || full?(board)
      return true
    else 
      return false
    end 
  end

  def winner(board)
   index = []
   index = won?(board)
   
   if index == false
      return nil
    end
    if board[index[0]] == "X"
      return "X"
    elsif board[index[0]] == "O"
      return "O"
  end
end