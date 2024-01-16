class Comment < ApplicationRecord
  belongs_to :post
  validates_presence_of :post
  has_rich_text :content
end
