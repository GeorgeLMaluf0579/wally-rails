require 'ffaker'
FactoryBot.define do
  factory :account do
    name { FFaker::Company.name }
    current_balance { 0 }
    account_type { association(:account_type) }

  end
end
