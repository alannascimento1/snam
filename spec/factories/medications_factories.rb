# frozen_string_literal: true

FactoryBot.define do
  factory :medication do
    sequence(:name) { |n| "Medication #{n}" }
    description { "Some description" }
  end
end
