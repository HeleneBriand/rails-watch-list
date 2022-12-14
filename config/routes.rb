Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: [:new, :create, :show, :delete]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
