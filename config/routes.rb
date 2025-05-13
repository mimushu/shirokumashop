Rails.application.routes.draw do
  root "products#index"

  # 商品 CRUD
  resources :products

  # カート関連 ===============================
  resource  :cart, only: :show
  post "/cart/add/:id",    to: "carts#add",    as: :add_to_cart
  post "/cart/remove/:id", to: "carts#remove", as: :remove_from_cart
  post "/checkout",        to: "carts#checkout", as: :checkout
  # =========================================

  devise_for :users

  # ---- 既存コメントはそのまま ----
  get "up" => "rails/health#show", as: :rails_health_check
  # ...
end

