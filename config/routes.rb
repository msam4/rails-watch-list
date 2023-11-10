Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "lists#index"
  # As a user, I can see all my movie lists
  # As a user, I can create a movie list
  # As a user, I can see the details of a movie list
  resources :lists, only: [:index, :new, :create , :show] do
    # As a user, I can bookmark a movie inside a movie list
    resources :bookmarks, only: [:new, :create]
  end
  # As a user, I can destroy a bookmark
  resources :bookmarks, only: [:destroy]
end
