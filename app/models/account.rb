class Account < ApplicationRecord
  belongs_to :account_type
  validates_presence_of :name, :current_balance
  validates :current_balance, { numericality: true }
end
