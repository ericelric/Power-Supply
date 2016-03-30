Rails.application.routes.draw do
  devise_for :users
  resources :powers

  post '/powers/switch_on/:id', to: 'powers#switch_on'
  post '/powers/switch_off/:id', to: 'powers#switch_off'

  root 'powers#index'
end
