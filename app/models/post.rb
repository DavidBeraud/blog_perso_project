class Post < ApplicationRecord
  belongs_to :user

  # Active Storage from Rails 6
  has_one_attached :thumbnail
  has_one_attached :banner

  # Action Text from Rails 6
  has_rich_text :body

  # Validations
  validates :title, length: {minimum: 5}
  validates :body,  length: {minimum: 25}

  self.per_page = 9

  extend FriendlyId
  friendly_id :title, use: :slugged

end
