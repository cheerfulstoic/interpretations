Rails.application.routes.draw do
  resources :musics

  resources :artists do
    resources :musics
  end
end
