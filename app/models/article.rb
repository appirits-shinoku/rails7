class Article < ApplicationRecord
  has_many :comments
  validates :title, presence: true, length: { maximum: 255 }
  validates :text,  presence: true, length: { maximum: 10000 }
end
