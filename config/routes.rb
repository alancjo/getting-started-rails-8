Rails.application.routes.draw do
  root to: "products#index"

  resource :session
  resources :passwords, param: :token
  resources :products do
    resources :subscribers, only: [ :create ]
    resources :reviews
  end
  resource :unsubscribe, only: %i[ show ]
end
