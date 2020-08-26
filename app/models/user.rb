class User < ApplicationRecord

  # 1. also can write like this validates(:name, presence: true)
  # 2. go to https://rubular.com for REGEX
  # 3. uniqueness: { case_sensitive: false }
  #    -> false is like equalsIgnoreCase
  # 4. 'self' -> refers to the current user
  # 5. password_digest -> installed bcrypt (Store in Database)
  # 6. has_secure_password
  #    -> have password and password_confirmation attributes
  # 7. Rails Console ->
  #    user = User.find(1)
  #    user.password_digest -> will show hash password
  #    user.authenticate('wrong_password') ->  return FALSE
  #    user.authenticate('correct_password') -> return User
  #    !!user.authenticate('correct_password') -> return TRUE
  #    `!!` -> convert object to boolean value

  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

end
