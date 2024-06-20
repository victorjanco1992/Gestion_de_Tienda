Rails.application.routes.draw do

  devise_for :users  
  root "home#index"  

  resources :categories, except: [:show]
  resources :clients, except: [:show]
  resources :suppliers, except: [:show]
  resources :products, except: [:show]
  resources :sales, except: [:show]

  get 'buscador_productos/:termino', to: 'productos#buscador'


end
