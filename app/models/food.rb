class Food < ActiveRecord::Base
	has_paper_trail

	validates :name, presence: true, length: {minimum: 2}
	validates :price, presence: true, numericality: {greater_than_ir_equal_to: 0, less_than: 50}
	validates :image, presence: true

	mount_uploader :image, FoodImageUploader
end
