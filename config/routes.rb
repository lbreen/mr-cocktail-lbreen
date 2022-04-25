Rails.application.routes.draw do

  resources :cocktails, only: [:index, :show, :new, :create] do
    member do
      patch "upvote", to: "cocktails#upvote"
    end
    resources :doses, only: [:new, :create, :destroy]
  end


  root "cocktails#index"

end
