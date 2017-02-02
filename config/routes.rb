Rails.application.routes.draw do

  get '/ui'  => 'ui#index'
  get '/ui#' => 'ui#index'
  root "ui#index"
  
  scope :api, defaults: {format: :json} do
    resources :cities, except: [:new, :edit]
    resources :states, except: [:new, :edit]
  end



end
