class User < ApplicationRecord

  # also can write like this validates(:name, presence: true)
  # go to https://rubular.com for REGEX
  # uniqueness: { case_sensitive: false }
  # : false is like equalsIgnoreCase
  # self refers to the current user

  before_save { self.email = email.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true

end
