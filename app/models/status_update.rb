class StatusUpdate < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content

  acts_as_votable
  default_scope :order => 'created_at DESC'
end
