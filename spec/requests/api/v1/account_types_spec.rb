require 'rails_helper'

RSpec.describe 'Api::V1::AccountTypes', type: :request do
  before do
    @account_types = create_list(:account_type, 11)
  end

  it 'GET /account_types' do
    get('/api/v1/account_types')
    expect(response).not_to be_nil
    expect(response).to have_http_status(:ok)
    json_response = JSON.parse(response.body)
    expect(json_response).to be_an(Array)
    expect(json_response).to be_all(Hash)

    json_response.each do |account_type|
      expect(account_type).to have_key("name")
      expect(account_type["name"]).to be_a(String)
      expect(account_type).to have_key("created_at")
      expect(account_type["created_at"]).to be_a(String)
      expect(account_type).to have_key("updated_at")
      expect(account_type["updated_at"]).to be_a(String)
    end
  end
end
