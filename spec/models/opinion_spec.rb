require 'rails_helper'

RSpec.describe Opinion, type: :model do
  describe 'opinion Association' do
    it { should belong_to(:author) }
  end

  describe 'Validation' do
    it { should_not validate_length_of(:text).is_at_least(5) }
    it { should validate_length_of(:text).is_at_most(300) }
  end
end
