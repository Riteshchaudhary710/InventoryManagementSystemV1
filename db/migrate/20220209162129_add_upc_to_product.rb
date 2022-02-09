class AddUpcToProduct < ActiveRecord::Migration[6.1]
  def change
    # add_column :products, :upc, :integer
    add_index :products, :upc, unique: true
  end
end
