
require 'tdd'
require 'rspec'

 describe Array do 
  describe '#my_uniq' do 
  it 'removes dupilicates from array' do 
    arr = [1, 2, 1, 3, 3]
    expect(arr.my_uniq).to eq([1, 2, 3])
  end 
 end 
end 

