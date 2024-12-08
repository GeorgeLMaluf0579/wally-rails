require 'ffaker'
FactoryBot.define do
  factory :account_type do
  name { FFaker::Company.name }
  end
end
