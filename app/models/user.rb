class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items
  # has_many :buyers

  with_options presence: true do
    validates :nickname
    validates :birthday

    with_options format: { with: /\A(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]+\z/ } do
      validates :password
      validates :password_confirmation
    end
    with_options format: { with: /\A[ぁ-んァ-ン一-龥々ー]+\z/ } do
      validates :family_name
      validates :first_name
    end
    with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
      validates :family_name_kana
      validates :first_name_kana
    end
  end
end
