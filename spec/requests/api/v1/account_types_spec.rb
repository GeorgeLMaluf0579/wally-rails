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
  end
end
