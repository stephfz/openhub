class User < ActiveRecord::Base
  has_many :presentations


  def self.find_or_create_with_omniauth(auth)
    user = find_by_provider_and_uid(auth["provider"], auth["uid"]) 
    user || create_with_omniauth(auth)
  end

  private

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
