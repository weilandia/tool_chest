class Tool < ActiveRecord::Base
  validates_presence_of :name, :price, :quantity
  def price_format
    price / 100.00
  end
end
