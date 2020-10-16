class Rule < ApplicationRecord
  belongs_to :minimum
  belongs_to :discount
  belongs_to :product
end
