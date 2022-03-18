class Removefromimgs < ActiveRecord::Migration[7.0]
  def change
    remove_column :images, :product_id, :string
    remove_column :images, :integer, :string
  end
end
