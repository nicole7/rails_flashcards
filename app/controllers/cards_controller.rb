class CardsController < ApplicationController

  def show
    @card = Card.find(params[:id])
    @deck = @card.deck
    @round = current_round
    @guess =
  end

end
