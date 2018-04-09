Rails.application.routes.draw do
  get 'messages/index' => 'messages#index'
  get 'messages/index'  => 'messages#new'
  post 'messages#create'
  get 'page/index'
  root 'messages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
