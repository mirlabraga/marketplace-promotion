class ChangeColumnMinimums < ActiveRecord::Migration[6.0]
  def change
    rename_column :minimums, :type, :category
  end
end
