#card.rb
class Card 
SUITS = [:spades, :hearts, :diamonds, :clubs]

  attr_reader :suit, :value 

  def initialize(suit, value)
    raise "not valid suit" unless SUITS.include?(suit)
    @suit = suit 
    @value = value 
  end 
  
  def inspect 
    "#{suit} #{value}"
  end 
end 