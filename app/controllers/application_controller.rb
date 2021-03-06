class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

private
  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_round
    @current_round ||= Round.find(session[:round_id]) if session[:round_id]
  end

  helper_method :current_user
  helper_method :logged_in?
  helper_method :current_round
end
