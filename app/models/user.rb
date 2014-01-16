class User < ActiveRecord::Base

	def self.from_omniauth(auth)
		puts "In user.rb, line 4"
		where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
	end

	def self.create_from_omniauth(auth)
		puts "about to create user"
		create! do |user|
			user.provider = auth["provider"]
			user.uid = auth["uid"]
			user.screen = auth["info"]["nickname"]
			user.name = auth["info"]["name"]
			user.access_token  = auth["credentials"]["token"]
			user.access_secret = auth["credentials"]["secret"]
		end
	end

end
