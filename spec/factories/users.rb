FactoryBot.define do
  factory :user do
    transient do
      person { Gimei.name }
    end

    nickname { Faker::Name.initials }
    email { Faker::Internet.free_email }
    password { 'test1234' }
    password_confirmation { password }
    first_name { person.first.kanji }
    last_name { person.last.kanji }
    first_name_kana { person.first.katakana }
    last_name_kana { person.last.katakana }
    birthday { Faker::Date.birthday(min_age: 5, max_age: 91) }
  end
end
