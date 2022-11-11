class Article < ApplicationRecord

  #this includes our concern created in models to only display visible articles
  include Visible

  #allows each article to have many comments
  has_many :comments, dependent: :destroy

  #makes sure each article has a title and body (with body have a min chars at 10)
  validates :title, presence: true
  validates :body, presence: true, length: {minimum: 10}
  
end
