class AddForeignKeyMinimumsToRules < ActiveRecord::Migration[6.0]
  def change
    add_reference :rules, :minimums, null: false, foreign_key: true
  end
end
