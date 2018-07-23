Rails.application.routes.draw do

  root to: 'site/pages#index'  

  namespace :site do
    get 'pages/index'
    get 'pages/profile'
  end

  get "/profile" => "site/pages#profile", as: :profile



  devise_scope :user do
    get "/login" => "devise/sessions#new" # custom path to login/sign_in
    get "/registration" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end

   devise_for :users
  
  # devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
