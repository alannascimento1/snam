require "rails_helper"

RSpec.describe Medication, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }

    it { is_expected.to validate_length_of(:description).is_at_most(140) }

    it do
      medication = create(:medication)
      expect(medication).to validate_uniqueness_of(:name)
    end
  end
end
