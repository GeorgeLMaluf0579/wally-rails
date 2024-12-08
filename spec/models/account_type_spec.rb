require 'rails_helper'

RSpec.describe AccountType, type: :model do
  describe '#Model Validations' do
    it 'has a valid factory' do
      account_type = create(:account_type)
      expect(account_type).to be_valid
    end

    it 'is invalid if missing the name' do
      account_type = build(:account_type, name: nil)
      expect(account_type).not_to be_valid
    end
  end
end
