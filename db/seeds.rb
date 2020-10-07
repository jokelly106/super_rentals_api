rental = FactoryBot.create(:rental)
Rental.create(title: rental.title,
    owner: rental.owner,
    city: rental.city,
    lat: rental.lat,
    lng: rental.lng,
    image: rental.image,
    bedrooms: rental.bedrooms,
    description: rental.description,
    category: rental.category)