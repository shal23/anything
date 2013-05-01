class UserProfile < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  belongs_to :user
  attr_accessible :about, :facebook, :github, :hobbies, :user_profile, :avatar, :string
end
