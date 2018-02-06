class Admin < ApplicationRecord
  has_secure_password validation: true

  validates :name, presence: true
end
