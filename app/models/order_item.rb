class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :order

  validates :quantity, presence: true
end
