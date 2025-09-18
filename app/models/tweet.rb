class Tweet < ApplicationRecord
  has_many :comments, dependent: :destroy

  # いいねの関連
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
end
