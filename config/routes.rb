Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :products

end
