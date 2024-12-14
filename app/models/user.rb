class User < ApplicationRecord
  include Clearance::User

  enum role: { admin: 0, health_professional: 1 }

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :role, presence: true, inclusion: { in: roles.keys }
end
