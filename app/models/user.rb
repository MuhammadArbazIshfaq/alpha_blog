class User < ApplicationRecord
  before_save { self.email = email.downcase }
 has_many :articles , dependent: :destroy

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :username, presence: true,
                       length: { minimum: 3, maximum: 20 },
                       uniqueness: { case_sensitive: false }

  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    length: { maximum: 105 },
                    format: { with: VALID_EMAIL_REGEX }
    
   has_secure_password
end
