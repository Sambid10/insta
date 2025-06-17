class Post < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  validates:photo,:description,presence:true
  has_many:comments,dependent: :delete_all

  acts_as_votable
end
