Rails.application.routes.draw do
      devise_for :admin_users

      root 'welcome#index'

      resources :students

      get 'signup', to: 'teachers#new'
      post 'signup', to: 'teachers#create'
      resources :teachers, except: [:new]








  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
