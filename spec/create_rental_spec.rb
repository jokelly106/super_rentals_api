require 'rails_helper'

$rental = FactoryBot.create(:rental)
describe "create a rental", :type => :request do
    before do
        post '/rentals', params: { :rental => { 
            :title => $rental.title,
            :owner => $rental.owner,
            :city => $rental.city,
            :lat => $rental.lat,
            :lng => $rental.lng,
            :image => $rental.image,
            :bedrooms => $rental.bedrooms,
            :description => $rental.description,
            :category => $rental.category
            }
         }
    end

    it 'returns the rental title' do
        expect(JSON.parse(response.body)['data']['attributes']['title']).to eq($rental.title)
    end

    it 'returns the rental owner' do
        expect(JSON.parse(response.body)['data']['attributes']['owner']).to eq($rental.owner)
    end

    it 'returns the rental city' do
        expect(JSON.parse(response.body)['data']['attributes']['city']).to eq($rental.city)
    end

    #For lat/lng, remember the serializer puts it into a location object for the web app.
    it 'returns the rental lat' do
        expect(JSON.parse(response.body)['data']['attributes']['location']['lat']).to eq($rental.lat)
    end

    it 'returns the rental lng' do
        expect(JSON.parse(response.body)['data']['attributes']['location']['lng']).to eq($rental.lng)
    end

    it 'returns the rental image' do
        expect(JSON.parse(response.body)['data']['attributes']['image']).to eq($rental.image)
    end

    it 'returns the rental bedrooms' do
        expect(JSON.parse(response.body)['data']['attributes']['bedrooms']).to eq($rental.bedrooms)
    end

    it 'returns the rental description' do
        expect(JSON.parse(response.body)['data']['attributes']['description']).to eq($rental.description)
    end

    it 'returns the rental category' do
        expect(JSON.parse(response.body)['data']['attributes']['category']).to eq($rental.category)
    end
end