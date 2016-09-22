class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
        user.name = auth['info']['name']
        user.image = auth['info']['image']
      end
      if auth['credentials']
        user.oauth_token = auth['credentials']['token']
        user.oauth_expires_at = auth['credentials']['expires_at']
      end
      if auth['extra']
        user.link = auth['extra']['raw_info']['link']
        user.fb_verified = auth['extra']['raw_info']['verified']
        user.gender = auth['extra']['raw_info']['gender']
        user.email = auth['extra']['raw_info']['email']
      end
    end
  end
end
