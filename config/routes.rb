Rails.application.routes.draw do
  # namespace :api do
  #   namespace :v1 do
  #     get 'orders/index'
  #     get '/show/:id', to: 'orders#show'
  #     get 'orders/new'
  #   end
  # end
  # namespace :api do
  #   namespace :v1 do
  #     get 'products/index'
  #     get 'products/new'
  #     get 'products/edit'
  #   end
  # end
  namespace :api do
    namespace :v1 do
      resources :products
      resources :orders
    end
  end
  namespace :api do
    namespace :v1 do
      get 'carts/:id' => "carts#show", as: "cart"
      delete 'carts/:id' => "carts#destroy"
    end
  end
  namespace :api do
    namespace :v1 do
      post 'order_items/:id/add' => "order_items#add_quantity", as: "order_item_add"
      post 'order_items/:id/reduce' => "order_items#reduce_quantity", as: "order_item_reduce"
      post 'order_items' => "order_items#create"
      get 'order_items/:id' => "order_items#show", as: "order_item"
      delete 'order_items/:id' => "order_items#destroy"
    end
  end

  root 'homepage#index'
  get '/*path' => 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
