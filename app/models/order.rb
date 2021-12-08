class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  has_many :products, through: :order_items

  validates :name, presence: true
  validates :address, presence: true
end
