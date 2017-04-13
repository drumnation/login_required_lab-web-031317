Rails.application.routes.draw do
  get '/', to: redirect('/login')
  get '/secret', to: 'secrets#show', as: :secret
  get '/login', to: 'sessions#new', as: :login
  post '/sessions', to: 'sessions#create', as: :create_session
  post '/sessions', to: 'sessions#destroy', as: :destroy_session
end
