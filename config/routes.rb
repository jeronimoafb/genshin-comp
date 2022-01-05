Rails.application.routes.draw do
  get 'elements', to: "elements#index", as: :elements 
  get 'elements/show'
  get 'elements/new', as: :new_element
  get 'elements/edit'
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
