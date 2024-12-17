class Medication < ApplicationRecord
  validates :name, presence: true

  validates :description, length: { maximum: 140 }

  validates :name, uniqueness: true
end
