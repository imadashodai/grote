require "csv"

class Shop < ApplicationRecord
  serialize :category_ids

  def self.import(file)
    csv_data = CSV.read(file.path, headers: true)

    csv_data.each do |row|
      shop = self.new
      shop.name = row[0]
      shop.address = row[1]
      shop.area_id = row[2]
      shop.category_ids = row[3]

      shop.save
    end
  end

end
