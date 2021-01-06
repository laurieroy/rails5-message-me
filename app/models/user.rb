class User < ApplicationRecord
	has_many :messages, dependent: :destroy
	validates :username, presence: true, length: {minimum: 3, maximum: 15 },
		uniqueness: { case_sensitive: false }
	has_secure_password
end
