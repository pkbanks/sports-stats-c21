Rails.application.routes.draw do
  # resources :stats
  # resources :players
  # resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :teams do
    resources :players, only: [:index, :new, :create]
  end

  resources :players, only: [:show, :edit, :update, :destroy]

end
