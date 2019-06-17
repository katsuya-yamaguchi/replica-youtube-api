require 'rails_helper'

RSpec.describe Video, type: :model do
  describe '#find_all' do
    it 'test' do
      result = Video.find_all
      expect(result.class).to equal(String)
    end
  end
end
