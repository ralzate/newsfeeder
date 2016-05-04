class User < ActiveRecord::Base
    has_many :stories

    class << self
        def from_omniauth(auth)
            user = User.find_or_initialize_by(uid: auth['uid'])
            user.name = auth['info']['name']
            user.oauth_token = auth.credentials.token
            user.oauth_expires_at = Time.at(auth.credentials.expires_at)
            user.avatar_url = auth['info']['image']
            user.save!
            user
        end
        private

        def current_user
            @current_user ||= User.find_by(id: session[:user_id])
        end
    end
end
