class Deck < ApplicationRecord
  has_many :cards
  has_many :rounds
  has_many :guesses, through: :rounds, source: :user

  # def shuffle_cards
  #   self.cards.shuffle
  # end

  def get_next_card

  end

  def rotate
    randomized_ids = self.cards.pluck(:id).rotate
    rotated_cards = []

    randomized_ids.each do |id|
      rotated_cards << Card.find(id)
    end

    rotated_cards
  end

end

# get_next_card method
# if correct guess, can't get that card anymore
# If all cards answered correctly, go to success page of some sort
  # later, refactor to rounds and stats.


