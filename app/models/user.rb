class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.uid      = auth["uid"]
      user.provider = auth["provider"]
      user.name     = auth["info"]["name"]
      user.twitter  = auth["info"]["nickname"]
      user.photo    = auth["info"]["image"]
    end
  end

end
