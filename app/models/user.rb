class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  has_one :user_profile, :dependent => :destroy

  has_many :user_groups
  has_many :groups, :through => :user_groups
  has_many :status_updates

#testing to see in a group
  def is_member?(group)
    self.groups.include?(group)
  end

  acts_as_voter
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
end
