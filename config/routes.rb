Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'orders/index'
      get 'orders/show'
      get 'orders/new'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'carts/show'
      get 'carts/destroy'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'products/index'
      get 'products/new'
      get 'products/edit'
    end
  end
  root 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
