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
    WIN_COMBINATIONS.each do |combineation|
      if combineation.all do { |pos| position_taken?(board,pos) }
        if board[combineation[0]] == board[combineation[1]] && board[combineation[1]] == board[combineation[2]]
          return combineation
        end
      end
    end
    return nil
  end