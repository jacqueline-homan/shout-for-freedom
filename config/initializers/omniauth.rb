# OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do 
	provider :twitter, ENV['TFWS_KEY'], ENV['TFWS_SECRET']
end