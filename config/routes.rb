Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # cocktail routes
  # index - user can see list of cocktails
  # show - user can see details of a given cocktail
  # create & new - user can create a new cocktail

  # dose routes
  # new - user can add a new dose to an existing cocktail (ingredient/description pair)
  # delete - user can delete dose that belongs to an existing cocktail
  root :to => 'cocktails#index'
  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
