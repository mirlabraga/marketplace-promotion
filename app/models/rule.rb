class Rule < ApplicationRecord
  belongs_to :minimums
  belongs_to :discounts
  belongs_to :products
end
