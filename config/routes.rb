Rails.application.routes.draw do
  get 'main/index' 
  # the above MATCH ROUTE is equivalent to... 
    # match "main/index", to: "main#index", via: :get
    # you can even include a dynamic segment...
      # match "tasks:id", to: "tasks#show", via: :get 
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
