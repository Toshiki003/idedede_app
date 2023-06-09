Rails.application.routes.draw do
  get 'word_ideas/index'
  root to: 'ideas#new'
  resources :ideas, only: %i[new create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
