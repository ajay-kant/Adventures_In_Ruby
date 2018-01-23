Rails.application.routes.draw do
  

  get 'access/new'
  get 'access/create'
  get 'access/destroy' 

  get 'admin/index'
  get 'login', to: 'access#new'
  post 'access/new', to: 'access#create'
  delete 'logout', to: 'access#destroy'

  resources :users
  resources :orders
  resources :lineitems
  resources :carts

  get 'shopper/index'

  resources :products
  root "shopper#index", as: 'root'
  get '/shopper', to: redirect('shopper/index')
  get '/admin', to: redirect('admin/index')

  get 'public/home', to: redirect('/home.html')
  get 'public/questions', to: redirect('/questions.html')
  get 'public/contact', to: redirect('/contact.html')
  get 'public/news', to: redirect('/news.html')

  
  #get 'products/questions'
  #get 'products/news'
  #get 'products/contact'
  #get 'admin', to:'admin#index'
  #get 'shopper', to: 'shopper#index'
  
  

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
