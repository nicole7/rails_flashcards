Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'decks#index'

  resources :decks, only: [:show, :index] do
    resources :rounds, only: [:create, :destroy, :show] do
      resources :cards, only: [:show] do
        resources :guesses, only: [:create]
      end
    end
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  # get '/signup', to: 'users#new'
  # post '/users', to: 'users#create'

  resources :users, only: [:new, :create]

end
