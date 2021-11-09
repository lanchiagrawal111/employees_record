class Purse < ApplicationRecord
  belongs_to :employee
  has_one :payment_history
end
