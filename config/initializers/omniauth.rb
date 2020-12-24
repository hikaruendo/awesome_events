Rails.application.config.middleware.use OmniAuth::Builder do
    if Rails.env.development? || Rail.env.test?
        provider :github, ENV["TWITTER_KEY"], ENV["TWITTER_SECRET"]
    else
        provider :github, 
            Rails.application.credentials.github[:client_id]
            Rails.application.credentials.github[:client_secret]
    end
end