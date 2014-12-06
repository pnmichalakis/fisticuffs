require 'dotenv'
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['APPID'], ENV['APPSECRET']
end