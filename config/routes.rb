Rails.application.routes.draw do

  devise_for :users, :controllers => {:registrations => 'user/registrations'}
  resources :user_stocks, except: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :welcome

  root 'welcome#index'
  get 'my-portfolio', to: 'users#my_portfolio'
  get 'search-stocks', to: 'stocks#search'
end
