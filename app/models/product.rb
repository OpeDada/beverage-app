class Product < ApplicationRecord
  has_one_attached :photo
  has_many :order_items, dependent: :destroy

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :brand, presence: true
end
