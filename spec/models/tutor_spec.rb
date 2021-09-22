require 'rails_helper'

RSpec.describe Tutor, type: :model do

  it 'has a valid factory' do
    expect(build(:tutor)).to be_valid
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
  end

end
