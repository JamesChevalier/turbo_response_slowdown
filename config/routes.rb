Rails.application.routes.draw do
  root to: "posts#index"

  resources :posts do
    collection do
      get :search
      post :search
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
