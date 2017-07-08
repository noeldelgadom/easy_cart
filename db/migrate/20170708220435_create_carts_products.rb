class CreateCartsProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts_products do |t|
      t.references :cart, foreign_key: true
      t.references :product, foreign_key: true
    end
  end
end
