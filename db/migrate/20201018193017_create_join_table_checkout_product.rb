class CreateJoinTableCheckoutProduct < ActiveRecord::Migration[6.0]
  def change
    create_join_table :Checkouts, :Products do |t|
      t.index [:checkout_id, :product_id]
      t.index [:product_id, :checkout_id]
    end
  end
end
