class Post < ApplicationRecord
    has_attached_file :image, styles: {large: "600x600", medium: "300x300", thumb: "150x150"}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    validates :title, length: { minimum: 5 }
    validates :body, length: { minimum: 50 }
    validates :image, presence: true

    has_many :comments
    belongs_to :user
end
