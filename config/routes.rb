Rails.application.routes.draw do
  resources :characters
  get 'elements', to: "elements#index", as: :elements 
  get 'elements/:id', to: "elements#show", as: :element
  get 'element/new', to: "elements#new", as: :new_element
  post 'elements', to: "elements#create"
  get 'elements/:id/edit', to: "elements#edit", as: :edit_element
  patch 'elements/:id', to: "elements#update"
  delete 'elements/:id', to: "elements#destroy", as: :destroy_element

  get 'weapons', to: "weapons#index", as: :weapons
  get 'weapons/:id', to: "weapons#show", as: :weapon
  get 'weapon/new', to: "weapons#new", as: :new_weapon
  post 'weapons', to:"weapons#create"
  get 'weapons/:id/edit', to: "weapons#edit", as: :edit_weapon
  patch 'weapons/:id', to: "weapons#update"
  delete 'weapons/:id', to: "weapons#destroy", as: :destroy_weapon
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
