Rails.application.routes.draw do
  get '/flats', to: 'flats#index', as: :flats
  get '/flats/:id', to: 'flats#show', as: :flat
end
