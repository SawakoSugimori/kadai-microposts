class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favoites
  has_many :users_list, through: :favoites, source: :user
    
  validates :content, presence: true, length: { maximum: 255}
end
