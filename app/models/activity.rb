class Activity < ApplicationRecord
  belongs_to :provider

  has_many :user_activities
  has_many :users, through: :user_activities
  
  has_many :activity_categories
  has_many :categories, through: :activity_categories
end
