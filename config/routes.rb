Rails.application.routes.draw do
  root 'home#index'
  get 'catamaran' => 'home#catamaran'
  get 'gallery' => 'home#gallery'
  get 'location' => 'home#location'
  get 'contact' => 'reservations#new'
  get 'reservations' => 'reservations#new'
  get 'charter' => 'reservations#new'
  resources :reservations, only: [:new, :create]
end
