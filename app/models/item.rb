class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :Category
  belongs_to_active_hash :SalesStatus
  belongs_to_active_hash :ShippingFeeStatus
  belongs_to_active_hash :Prefecture
  belongs_to_active_hash :ScheduledDelivery
  belongs_to :user
  # has_one :buyer
  has_one_attached :image

  validates :title, :text, presence: true

  validates :category_id, numericality: { other_than: 1 }
  validates :salesstatus_id, numericality: { other_than: 1 }
  validates :shippingfeestatus_id, numericality: { other_than: 1 }
  validates :prefecture_id, numericality: { other_than: 1 }
  validates :scheduleddelivery_id, numericality: { other_than: 1 }
end
