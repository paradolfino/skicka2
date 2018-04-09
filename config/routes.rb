Rails.application.routes.draw do
  get 'messages/index' => 'messages#index'
  get 'messages/index'  => 'messages#new'
  get 'messages/create'
  get 'page/index'
  root 'page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
