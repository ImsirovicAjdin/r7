Rails.application.routes.draw do
  # here's a root route:
  root "main#index"
  # longer version:
    # match "/", to: "main#index", via: :get

  get 'main/index' 
  # the above MATCH ROUTE is equivalent to... 
    # match "main/index", to: "main#index", via: :get
    # you can even include a dynamic segment...
      # match "tasks:id", to: "tasks#show", via: :get 
    
  # match "about", to: "main#index", via: :get
  match "about", to: "main#about", via: :get
  
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
