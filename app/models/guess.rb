class Guess < ApplicationRecord
  belongs_to :round
  belongs_to :card
  has_one :user, through: :round
end
