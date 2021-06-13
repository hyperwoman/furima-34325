FactoryBot.define do
  factory :item do
    name { Faker::Name.name }
    introduction { Faker::Lorem.sentence }
    category_id { Faker::Number.number }
    status_id { Faker::Number.number }
    shipping_cost_id { Faker::Number.number }
    prefecture_id { Faker::Number.number }
    shipping_day_id { Faker::Number.number }
    price { Faker::Commerce.price(range: 300..9_999_999) }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('app/assets/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
