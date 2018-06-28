#deck.rb 
require_relative 'card'
class Deck 
  attr_reader :deck

  def initialize
      @deck = make_deck
  end 
  
  def make_deck
    result = []
      Card::SUITS.each do |suit|
        (1..13).each do |n|
          result << Card.new(suit, n)
        end 
      end 
      result
  end 
  
  def take_card 
    @deck.shuffle.take(5)
    
  end 
  
end 

test = Deck.new 
# p test
p test.take_card
