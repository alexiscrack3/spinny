Rails.application.routes.draw do
  resources :players
  resources :clubs, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'clubs#index'
  get 'static_pages/home'
  get 'static_pages/help'
end
