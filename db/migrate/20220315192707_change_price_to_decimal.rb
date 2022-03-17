class ChangePriceToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :price, :decimal, scale: 2, precision: 9
  end
end
