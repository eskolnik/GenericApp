class Puzzle < ActiveRecord::Base
  attr_accessible :approved, :descr, :title
  belongs_to :user
  validates :user_id, presence: true
end
