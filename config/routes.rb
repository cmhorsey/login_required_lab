Rails.application.routes.draw do
  resources :sessions, only: %i[new create]
  root 'application#welcome'
  post '/logout' => 'sessions#destroy'
  get '/secret', to: 'secrets#show'
end
