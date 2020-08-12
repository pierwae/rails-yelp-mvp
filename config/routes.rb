Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :reviews, only: %i[destroy]
  resources :restaurants, only: %i[index new create show destroy] do
    resources :reviews, only: %i[new create]
  end
end
