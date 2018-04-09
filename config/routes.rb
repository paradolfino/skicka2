Rails.application.routes.draw do
  root 'messages#index'
  get '/' => 'messages#index'
  post '/' => 'messages#create'
  get 'page/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
