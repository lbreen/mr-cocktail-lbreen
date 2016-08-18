Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cocktail, only: [:index, :show, :new, :create] do
    member do
      resources :doses, only: [:new, :create]
    end
  end

  root "cocktails#index"
end
