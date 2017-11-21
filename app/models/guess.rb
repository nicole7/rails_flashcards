class Guess < ApplicationRecord
  belongs_to :round
  belongs_to :card
  has_one :user, through: :round

  def self.create_and_check_guess(card, answer, round)
    Guess.create(correct?: (answer.downcase.chomp == card.answer.downcase), round_id: round.id, card_id: card.id)
  end

  def self.get_correct_cards(guesses)
    correct_cards = []

    guesses.each do |guess|
      correct_cards << guess.card
    end

    correct_cards
  end
end
