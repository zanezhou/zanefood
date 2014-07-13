class Food < ActiveRecord::Base
	validates :name, presence: true, length: {minimum: 2}
	validates :price, presence: true, numericality: {greater_than_ir_equal_to: 0, less_than: 50}
	validates :image, presence: true
end
