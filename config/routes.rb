Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  root to: 'welcome#index'
  resources :nonprofits do
    resources :donations, :except => [:index, :edit, :update]
  end

  resources :subscriptions, :except => [:edit, :update]
  resources :plans, :except => [:edit, :update, :destroy]
end
