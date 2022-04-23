class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_rich_text :content

  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 10 }
end
