Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  
  resources :conversations do
    resources :messages
    get 'conversation/index'
  end
  
  root 'conversations#index'


end
