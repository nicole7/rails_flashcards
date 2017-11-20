class DecksController < ApplicationController
  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
    @cards = @deck.cards.shuffle
    @card = @cards.first
    render '/cards/show'
  end

end
