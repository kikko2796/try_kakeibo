Rails.application.routes.draw do
  get 'trys/home' 
  root 'trys#home'
  resources :subs
  resources :days

  get 'days/index' 
  get 'days/show'
  
  get 'days/new'
  post 'days' => "days#create"
  get 'days/edit'
  post 'days' => "days#update"
  delete 'days/destroy' => "days#destroy"
  get 'subs/index'
  get 'subs/show'
  get 'subs/new'
  post 'subs' => "subs#create"
  get 'subs/edit'
  post 'subs' => "subs#update"
  delete 'subs/destroy' => "subs#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
