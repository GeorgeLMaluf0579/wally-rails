require 'rails_helper'

RSpec.describe Account, type: :model do
  describe '#Model Validations' do
    it 'has a valid factory' do
      account = create(:account)
      expect(account).to be_valid
    end

    it 'is invalid if missing the name' do
      account = build(:account, name: nil)
      expect(account).not_to be_valid
    end

    it 'is invalid if missing the current_balance' do
      account = build(:account, current_balance: nil)
      expect(account).not_to be_valid
    end

    it 'is invalid if current_balance was not a number' do
      account = build(:account, current_balance: '123ABC' )
      expect(account).not_to be_valid
    end
  end
end