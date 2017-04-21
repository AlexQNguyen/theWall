class Message < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :post, :user, presence: true
  validates :post, length: {minimum: 10}
end
