class CreateMinimums < ActiveRecord::Migration[6.0]
  def change
    create_table :minimums do |t|
      t.integer :type
      t.float :value

      t.timestamps
    end
  end
end
