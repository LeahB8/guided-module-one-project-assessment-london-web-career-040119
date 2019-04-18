class Question < ActiveRecord::Base

  has_many :user_questions
  has_many :answers
  has_many :users, through: :user_questions

  validates :question, presence: true


end
