Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'manages#index'
  resources :accounts, only: [:new, :create, :show]
  resources :messages, only: [:new, :create, :show]
  post 'send-message', to: 'manages#send_message'
end
