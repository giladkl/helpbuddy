class Phone < ApplicationRecord
	belongs_to :user
	enum role: [:admin_number, :friend_number]
end
