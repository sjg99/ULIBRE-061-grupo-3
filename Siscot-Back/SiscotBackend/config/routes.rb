Rails.application.routes.draw do
  resources :driverroutes
  resources :usrfavs
  resources :ratings
  resources :routes
  resources :drivers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
