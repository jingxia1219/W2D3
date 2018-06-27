require 'tower_of_hanoi'
require 'rspec'

describe Hanoi do 
  subject(:hanoi) {Hanoi.new}
  describe '#initialize' do 
    it 'initalizes an array with starting discs' do 
      expect(hanoi.board).to eq([[3, 2, 1], [], []])
    end 
  end 
  
  describe '#move' do 
    context 'when you make a move' do 
      
      it 'removes the top disc from the first tower' do 
        hanoi.move(0,1) 
        expect(hanoi.board[0]).to eq([3,2])  
      end 
      
      it 'adds disc to the third tower' do 
        hanoi.move(0,2) 
        expect(hanoi.board[2]).to eq([1]) 
      end   
    end
  end  
  
  # @board = [[], [3,2,1]]
  describe '#won?' do 
    let(:winning_towers) { [[], [3, 2, 1], []] }
    context 'checks if discs filled other than starting tower' do 
    # let (:hanoi) {Hanoi.new([ [], [3,2,1] , [] ]) }
      it 'checks if the first tower is empty' do 
        allow(hanoi).to receive(:board).and_return(winning_towers)
        expect(hanoi).to be_won 
      end 
    end 
    
    # let (:hanoi) { Hanoi.new([ [], [3,2] , [1] ])} 
      it 'returns false if discs are not all in 2nd or 3rd pile' do 
        expect(hanoi).to_not be_won
        
      end 
      
      
  end 
  
end 
    