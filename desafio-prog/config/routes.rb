Rails.application.routes.draw do

  resources :vendas 

  root :to => "vendas#index"
  get 'Home' => 'vendas#upload'
  post 'upload' => 'vendas#upload'
  post 'Home' => 'vendas#upload'

end
