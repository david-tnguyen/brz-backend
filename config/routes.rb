Rails.application.routes.draw do
  resources :yahoo_quotes, only: [:index, :show]
  resources :yahoo_price, only: [:show]
  resources :tiingo_search, only: [:show]
end
