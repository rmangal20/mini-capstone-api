class AddWeightToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :weight, :float
  end
end
