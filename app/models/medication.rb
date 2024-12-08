class Medication < ApplicationRecord
  validates :name, presence: true
end
