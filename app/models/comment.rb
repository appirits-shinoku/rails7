class Comment < ApplicationRecord
  belongs_to :article
  validates :article_id, presence: true
  validates :contents, presence: true, length: { maximum: 10000 }
end
