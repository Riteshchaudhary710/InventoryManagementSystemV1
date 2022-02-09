class AddLabelToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :label, :string
  end
end
