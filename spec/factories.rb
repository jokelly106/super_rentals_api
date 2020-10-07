FactoryBot.define do
    categories = ["Condo","Townhouse","Apartment"]
    factory :rental, class: Rental do
        title {Faker::Name.unique.name}
        owner {Faker::Name.unique.name}
        city {Faker::Address.city }
        lat {Faker::Address.latitude}
        lng {Faker::Address.longitude}
        category {categories.sample}
        image {'https://upload.wikimedia.org/wikipedia/commons/c/cb/Crane_estate_(5).jpg'}
        bedrooms {Faker::Number.between(from: 1, to: 10)}
        description {Faker::Lorem.sentence}
    end
end