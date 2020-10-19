class AddColumnProducts < ActiveRecord::Migration[6.0]
  def up
    add_column :products, :name, :string
  end
  def down
    remove_column :products, :name
  end
end
