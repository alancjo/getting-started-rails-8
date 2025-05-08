Rails.application.routes.draw do
  get "subscribers/create"
  root to: "products#index"

  resource :session
  resources :passwords, param: :token
  resources :products do
    resources :subscribers, only: [ :create ]
  end
end
