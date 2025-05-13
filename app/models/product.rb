class Product < ApplicationRecord
  # これを追加 ----------------------------
  def self.ransackable_attributes(auth_object = nil)
    %w[id name description price stock created_at updated_at]
  end
  # --------------------------------------
end
