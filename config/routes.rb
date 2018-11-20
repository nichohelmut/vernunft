Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/initiative', to: 'pages#wir', as: 'wir'
  get '/charta', to: 'pages#charta', as: 'charta'
  get '/mitmachen', to: 'pages#join', as: 'join'
  get '/testimonials', to: 'pages#testimonial', as: 'testimonial'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
