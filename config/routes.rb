Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#strava'

  get 'hello', to: 'application#hello'
  get 'athletes/:id', to: 'application#athlete', as: 'athlete'
end
