Rails.application.routes.draw do
  resources :musics

  resources :artists do
    resources :musics
  end

  root 'artists#index'
end
