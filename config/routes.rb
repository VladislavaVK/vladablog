Rails.application.routes.draw do
 get 'draft/index'
  # get 'home/index'
  devise_for :users
  # get 'persons/profile'
  root 'home#index'

  resources :articles

  # get 'persons/profile', as: 'user_root'
    get 'draft', to: "draft#index"

    devise_scope :user do
      get '/users/sign_out' => 'devise/sessions#destroy'  
  end
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
