class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user
  validates_presence_of :headline, :body, :rating
end
