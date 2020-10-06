class SerializableRental < JSONAPI::Serializable::Resource
    type 'rentals'
    attributes :title, :owner, :city, :category, :bedrooms, :image, :description

    attribute :location do
        {
            'lat': @object.lat,
            'lng': @object.lng
        }
    end
end