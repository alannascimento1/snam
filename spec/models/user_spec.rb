require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#validations" do
    it { is_expected.to validate_presence_of(:email) }

    it do
      user = create(:user)
      expect(user).to validate_uniqueness_of(:email).case_insensitive
    end

    it do
      is_expected.to allow_value("valid.email@example.com").for(:email)
      is_expected.not_to allow_value("invalid_email").for(:email)
      is_expected.not_to allow_value("another_invalid@com").for(:email)
    end

    it { is_expected.to validate_presence_of(:name) }

    it { is_expected.to validate_length_of(:name).is_at_least(2).is_at_most(50) }

    it { is_expected.to validate_presence_of(:role) }

  end
end
