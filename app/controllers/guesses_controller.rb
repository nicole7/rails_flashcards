class GuessesController < ApplicationController
  def create
    @card = Card.find(params[:card])
    @deck = Deck.find(params[:deck_id]) # make sure to include in form
    @answer = params[:answer]
    @guess = Guess.create_and_check_guess(@card, @answer)

    correct_guesses = @deck.round.guesses.where(correct?: true)
    rotated_cards = @deck.rotate
    @current_cards = rotated_cards - get_correct_cards(correct_guesses)




  end

  private
    def guess_params
      params.require(:guess).permit(:correct?, :round_id, :card_id)
    end
end
