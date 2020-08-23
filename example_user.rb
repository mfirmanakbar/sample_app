class User
  # attr_accessor allow us to auto create setter and getter
  attr_accessor :name, :email

  # initialize is special method thah call when execute User.new
  def initialize(attributes = {})
    @name = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@email} <#{@email}>"
  end
end