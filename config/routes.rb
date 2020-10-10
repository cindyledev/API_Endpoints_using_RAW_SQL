Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"
  
  namespace :api do
     get '/test' => 'pages#test' 
     
     resources :tasks
     # GET / => tasks#index
     # GET /new => tasks#create
     # POST / => tasks#create
     # PUT /:id => tasks#update
  end
end
