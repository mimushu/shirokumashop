# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb に追記
10.times do |i|
  Product.create!(
    name: "サンプル商品#{i + 1}",
    price: (i + 1) * 400,
    stock: 20,
    description: "テスト用の商品説明です"
  )
end
rails db:seed
git add db/seeds.rb
git commit -m "seed: add sample products"
git push

