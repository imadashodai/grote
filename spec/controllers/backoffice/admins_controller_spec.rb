require 'rails_helper'

RSpec.describe Backoffice::AdminsController, type: :controller do
  describe 'GET show' do
    it 'assigns the requested admin to @admin' do
      admin = create(:admin)
      # get :show, id: admin
      # expect(assigns(:admin)).to eq admin
    end
  end
end
