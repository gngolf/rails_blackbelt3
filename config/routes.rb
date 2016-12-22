Rails.application.routes.draw do
  root to: 'users#index'
  get '/sessions' => 'sessions#create'
  post '/sessions' => 'sessions#create'
  get '/sessions/destroy' => 'sessions#destroy'
  delete '/sessions/destroy' => 'sessions#destroy'
  

 
  get 'ideas/new' => 'ideas#new'
  get 'idea/:id/delete' => 'ideas#delete'
  delete 'idea/:id/delete' => 'ideas#delete'
  post 'ideas/new' => 'ideas#create'

  

  get 'users/:id/home' => 'users#home'
  get 'users/:id' => 'users#show'
  get 'users/new' => 'users#new'
  post 'users/new' => 'users#create'

 

  get 'like/:id' => 'ideas#like'
  get 'like/:id/show' => 'ideas#show'
  post 'like/:id' => 'ideas#like'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
