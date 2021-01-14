Rails.application.routes.draw do
  root to: "home#index"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :rooms, except: [:edit] do
    member do
      get 'listing'
      get 'pricing'
      get 'description'
      get 'location'
    end
    resources :reservations, only: [:create]
  end
end
