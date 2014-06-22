class Product < ActiveRecord::Base
  belongs_to :category
  
  validates :price, :numericality => true
end
