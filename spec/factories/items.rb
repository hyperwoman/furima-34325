FactoryBot.define do
  factory :item do
    name { Faker::Name.name }
    introduction { Faker::Lorem.sentence }
    category_id { 2 }
    status_id { 2 }
    shipping_cost_id { 2 }
    prefecture_id { 2 }
    shipping_day_id { 2 }
    price { Faker::Commerce.price(range: 300..9_999_999) }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('app/assets/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
