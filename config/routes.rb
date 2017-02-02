Rails.application.routes.draw do

  get '/ui'  => 'ui#index'
  get '/ui#' => 'ui#index'
  root "ui#index"
  
  scope :api, defaults: {format: :json} do
    resources :cities, only: [:index, :show]
    resources :states, only: [:index, :show]
  end



end
