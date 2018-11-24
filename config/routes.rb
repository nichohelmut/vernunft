Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users

  get '/initiative', to: 'pages#wir', as: 'wir'
  get '/charta', to: 'pages#charta', as: 'charta', to: 'users#new'
  get '/mitmachen', to: 'pages#join', as: 'join'
  get '/testimonials', to: 'pages#testimonial', as: 'testimonial'

end
