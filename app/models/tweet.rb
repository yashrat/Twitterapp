class Tweet < ActiveRecord::Base

	#Association 
	belongs_to :user
	belongs_to :author, :class_name => "User", :foreign_key => 'user_id'

	#validation
	validates :comment, presence: true
end
