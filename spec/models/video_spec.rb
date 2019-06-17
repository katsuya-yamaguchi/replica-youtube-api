require 'rails_helper'

RSpec.describe Video, type: :model do
  describe '#find_all' do
    it 'can change video data to json.' do
      expect(Video.find_all.class).to equal(String)
    end
  end
end
