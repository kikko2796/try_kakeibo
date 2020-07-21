Rails.application.routes.draw do
  root 'subs#index'
  resources :subs
  get 'days/index'
  get 'days/show'
  get 'days/new'
  get 'days/edit'
  get 'subs/index'
  get 'subs/show'
  get 'subs/new'
  post 'subs' => "subs#create"
  get 'subs/edit'
  post 'subs' => "subs#update"
  delete 'subs/destroy' => "subs#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
