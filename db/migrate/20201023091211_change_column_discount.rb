class ChangeColumnDiscount < ActiveRecord::Migration[6.0]
  def change
    rename_column :discounts, :type, :category
  end
end
