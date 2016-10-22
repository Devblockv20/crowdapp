class UserProfile < ApplicationRecord
  # assocations
	belongs_to :user, dependent: :destroy
end
