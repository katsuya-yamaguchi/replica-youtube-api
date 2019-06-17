require 'rails_helper'

RSpec.describe VideosController, type: :controller do
  describe '#index' do
    it 'can get json format data.' do
      get :index
      expect(response.status).to eq(204)
    end
  end
end
