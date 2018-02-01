Rails.application.routes.draw do
  # get 'news/index'

   root :to => 'home#index'

  devise_for :users

  resources :users, :except => [:show, :index, :create, :new, :edit, :update, :destroy] do
    resources :interests
  end

  # root :to => 'news#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
