require 'rails_helper'

RSpec.describe Backoffice::AdminsController, type: :controller do
  describe 'GET show' do
    it 'assigns the requested admin to @admin' do
      admin = create(:admin)
      get :show, id: admin
      expect(response.status).to eq(302)
    end
  end
end
