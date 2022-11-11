class Article < ApplicationRecord
  #allows each article to have many comments
  has_many :comments

  #makes sure each article has a title and body (with body have a min chars at 10)
  validates :title, presence: true
  validates :body, presence: true, length: {minimum: 10}
end
