Rails.application.routes.draw do
  devise_for :users
  resources :yahoo_quotes, only: [:index, :show]
  resources :yahoo_price, only: [:show]
  resources :tiingo_search, only: [:show]
end
