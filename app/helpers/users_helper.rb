module UsersHelper
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "http://secure.gravatar.com/avatars/#{gravatar_id}.png?f=y"
    image_tag("http://www.blondish.net/images/gravatar-logo.png", alt: user.name, class: "gravatar",
              size: "100x100")
  end
end
