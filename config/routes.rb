Rails.application.routes.draw do
  resources :musics, only: [:index]

  resources :artists do
    resources :musics, except: [:index]
  end

  root 'artists#index'
end
