class UserProfile < ApplicationRecord
  # assocations
  belongs_to :user, dependent: :destroy
  # validations
  validates :name, :presence => true,
  :length => {:within => 4..50}
  validates :bio, :length => {:within => 2..140}
  validates :location, :length => {:within => 9..50}
  
  # avatar uploading 
  mount_uploader :avatar, AvatarUploader

end
