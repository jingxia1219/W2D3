
require 'tdd'
require 'rspec'

 describe Array do 
  describe '#my_uniq' do 
  it 'removes dupilicates from array' do 
    arr = [1, 2, 1, 3, 3]
    expect(arr.my_uniq).to eq([1, 2, 3])
  end 
 end 
 
 describe '#two_sum' do 
   it 'returns indexes of pairs that add to zero' do 
    arr = [-1, 0, 2, -2, 1]
    expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end 
  end 
  
  describe '#my_transpose' do 
    it 'tranposes a matrix' do 
      rows = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
        ]   
        cols = [
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
        ]
        expect(rows.my_transpose).to eq(cols)
    end 
  end 
  
end 

describe '#stock_picker' do 
  it 'picks the best day to buy and to sell to get the highest profit' do 
    arr = [20,28,5,17,22]
    expect(stock_picker(arr)).to eq([2,4]) 
  end 
end 

