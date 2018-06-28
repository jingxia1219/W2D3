require 'card'
require 'deck'

describe Card do 
  subject(:card) { Card.new(:spades, 7) }
  describe '#initialize' do 
    context 'when having wrong arguments' do 
      it 'raises error if wrong suit'
      it 'raises error if wrong value'
      
    end 
 
    
    
    it 'initializes the suit and value' do 
      expect(card.suit).to eq(:spades)
      expect(card.value).to eq(7)
    end 
  end 
  
  
  
end

describe Deck do 
  subject(:new_deck) { Deck.new }
  describe '#initialize' do 
    
    it 'initializes a 52 card deck' do 
      expect(new_deck.deck.length).to eq(52)
    end 
    
  end 
end  
# 
# describe Hand do 
#   subject(:new_hand) {Hand.new}
# 