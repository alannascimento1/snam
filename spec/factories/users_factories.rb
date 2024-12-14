FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user_#{n}@email.com" }
    sequence(:name) { |n| "User #{n}" }
    role { 1 }
    sequence(:password) { |n| "#{n}"*6 }
  end
end
