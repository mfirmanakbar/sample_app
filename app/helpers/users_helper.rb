module UsersHelper

  # return Gravatar from user email with custom size
  # from HTML.ERB call -> gravatar_custom @user, { size: 50}
  # or HTML.ERB call -> gravatar_custom(@user, { size: 50})
  def gravatar_custom(user, options = { size: 80 })
    size = options[:size]
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: 'gravatar')
  end

  # return Gravatar from user email with fixed size with size 80
  # from HTML.ERB call -> gravatar_size80 @user
  # or HTML.ERB call -> gravatar_size80(@user)
  def gravatar_size80(user, size: 80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: 'gravatar')
  end

end
