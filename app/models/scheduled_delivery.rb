class ScheduledDelivery < ActiveHash::Base
  include ActiveHash::Associations
  belongs_to :item

  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1〜2日で発送' },
    { id: 3, name: '2〜3日で発送' },
    { id: 4, name: '4〜7日で発送' },
  ]
end
