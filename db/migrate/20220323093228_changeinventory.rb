class Changeinventory < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :inventory, :quantity
  end
end
