class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :salesstatus
  belongs_to_active_hash :shippingfeestatus
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :scheduleddelivery
  belongs_to :user
  #has_one :buyer
  has_one_attached :image
end
