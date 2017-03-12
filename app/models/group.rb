class Group < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_many :posts

  scope :recent, -> { order("created_at DESC")}

  has_many :group_relationships
  has_many :members, through: :group_relationships, source: :user
end
