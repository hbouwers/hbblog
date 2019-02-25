Rails.application.routes.draw do
  resources :posts

  get '/about', to: 'pages#about'

  get '/contact_us', to: 'pages#contact_us'

  root 'posts#index'
  
end
