class Cart < ApplicationRecord
  has_and_belongs_to_many :products
  belongs_to :user

  def update_total
    self.total = self.products.to_a.sum { |i| i.price }
  end
end
