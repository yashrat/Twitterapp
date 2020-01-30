class Relationship < ActiveRecord::Base
	#associations
	belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  
  #Valiadtions
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
