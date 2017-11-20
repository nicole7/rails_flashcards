class Deck < ApplicationRecord
  has_many :cards

  def shuffle_cards
    self.cards.shuffle
  end

end

# Shuffle method for deck
# get_next_card method
# if correct guess, can't get that card anymore
# If all cards answered correctly, go to success page of some sort
  # later, refactor to rounds and stats.


