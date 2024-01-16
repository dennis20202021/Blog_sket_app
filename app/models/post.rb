class Post < ApplicationRecord
  has_rich_text :description
  validates_presence_of :post_name
  has_many :comments, dependent: :destroy
end
