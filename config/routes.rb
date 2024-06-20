Rails.application.routes.draw do
<<<<<<< HEAD

  devise_for :users  
  root "home#index"  

  resources :categories, except: [:show]
  resources :clients, except: [:show]
  resources :suppliers, except: [:show]
  resources :products, except: [:show]
  resources :sales, except: [:show]

  get 'buscador_productos/:termino', to: 'productos#buscador'


=======
  devise_for :users
  root to: 'home#index'  
  resources :categories
>>>>>>> 9b865dd25d475a11581d03d08eb455fb0adf133d
end
