require "csv"

class Shop < ApplicationRecord
  serialize :category_ids

  def self.import(file)
    open(file.path, "rb:Shift_JIS:UTF-8", undef: :replace ) do |f|

      CSV.new(f).each do |row|
        shop = self.new
        shop.name = row[0]
        shop.address = row[1]
        shop.area_id = row[2]
        shop.category_ids = row[3]

        shop.save
      end
    end
  end

end
