Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'

  get '/poll/:id', to: 'poll#show'

  resources :poll, only: %i(show)

  post 'poll/:id/votes', to: 'poll#votes'

  post 'poll/:id/boy', to: 'poll#boy'

  post 'poll/:id/girl', to: 'poll#girl'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
