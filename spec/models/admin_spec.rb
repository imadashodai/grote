require 'rails_helper'

RSpec.describe Admin, type: :model do
  describe 'create admin' do
    it 'test' do
      admin = Admin.new(name: 'test_admin', password: 'test', password_confirmation: 'test')
      admin.save
    end
  end
end
