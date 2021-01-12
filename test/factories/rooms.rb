FactoryBot.define do
  factory :room do
    property_type { "MyString" }
    country { "MyString" }
    city { "MyString" }
    detailed_address { "MyString" }
    description { "MyText" }
    price { 1 }
    occupied { false }
    active { false }
    user { nil }
  end
end
