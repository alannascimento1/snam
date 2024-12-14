FactoryBot.define do
  factory :user do
    email { |n| "user_#{n}@email.com" }
    name { |n| "User_#{n}" }
    role { 1 }
  end
end
