require 'rails_helper'

RSpec.describe Course, type: :model do

  it 'has a valid factory' do
    expect(build(:course)).to be_valid
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
  end

end