FactoryGirl.define do
  factory :user do
    firstname { Faker::Name.name }
    lastname { Faker::Name.name }
    username { Faker::Internet.name }
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
  end
end
