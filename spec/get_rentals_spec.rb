require 'rails_helper'

describe "Get all rentals", :type => :request do
  let!(:rentals) {FactoryBot.create_list(:rental, 5)}
before {get '/rentals'}
it 'returns all rentals' do
    expect(JSON.parse(response.body)['data'].size).to eq(5)
  end
it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end