Rails.application.routes.draw do
  get 'search', to: 'search#index'
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get 'u/:id', to: 'users#profile', as: 'user'

  resources :gardens
  # root to: 'home#index'
  root "static_pages#home"
  #root "static_pages#landing_page"
  get "privacy_policy", to: "static_pages#privacy_policy"
  # get 'static_pages/landing_page'
  #get 'static_pages/privacy_policy'

  # get 'about', to: 'pages#about'  finish these views to show routes per instructions below
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
