class Product < ApplicationRecord
  validates :name, presence: true # 輸入的項目不能為空
  validates :price, presence: true # 輸入的項目不能為空
  
  has_many :cart_items, dependent: :destroy
  has_many :carts, through: :cart_items
end
