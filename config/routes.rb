Rails.application.routes.draw do
  resources :easybookings
  # get 'home/index'
  get 'home/about'
  get 'home', to:'home#index'
  root 'home#index'
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
