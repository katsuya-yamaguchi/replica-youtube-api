require 'rails_helper'

RSpec.describe VideosController, type: :controller do
  describe 'GET #index' do
    it 'has 204 status code.' do
      get :index
      expect(response.status).to eq(204)
    end
  end
end
