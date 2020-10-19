class AddForeignKeyToRules < ActiveRecord::Migration[6.0]
  def change
    add_reference :rules, :products, foreign_key: true
  end
end
