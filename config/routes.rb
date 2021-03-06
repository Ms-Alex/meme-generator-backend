Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :memes, only: [:index, :create, :update, :destroy, :show]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :favorites, only: [:index, :create, :destroy, :show]
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
