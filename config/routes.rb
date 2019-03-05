Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end

  get '/about', to: 'pages#about'

  get '/contact_us', to: 'pages#contact_us'

  root 'posts#index'
  
end
