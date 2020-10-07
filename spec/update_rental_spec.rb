require 'rails_helper'

describe "update a rental", :type => :request do
    let!(:rental) {
        @rental = FactoryBot.create(:rental)   
        @new_rental = FactoryBot.create(:rental);
    }
    it 'puts the update' do
        put "/rentals/#{@rental.id}", params: { :rental => { 
            :title => @new_rental.title,
            :owner => @new_rental.owner,
            :city => @new_rental.city,
            :lat => @new_rental.lat,
            :lng => @new_rental.lng,
            :image => @new_rental.image,
            :bedrooms => @new_rental.bedrooms,
            :description => @new_rental.description,
            :category => @new_rental.category
            }
         }
        expect(response.status).to eq(200)
        expect(Rental.find(@rental.id).title).to eq(@new_rental.title)
        expect(Rental.find(@rental.id).owner).to eq(@new_rental.owner)
        expect(Rental.find(@rental.id).city).to eq(@new_rental.city)
        expect(Rental.find(@rental.id).lat).to eq(@new_rental.lat)
        expect(Rental.find(@rental.id).image).to eq(@new_rental.image)
        expect(Rental.find(@rental.id).bedrooms).to eq(@new_rental.bedrooms)
        expect(Rental.find(@rental.id).description).to eq(@new_rental.description)
        expect(Rental.find(@rental.id).category).to eq(@new_rental.category)

     end
end