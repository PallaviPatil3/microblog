class RegistrationsController < Devise::RegistrationsController
	def create
		super do |resource|
			UserMailer.welcome_email(@user).deliver
		end
	end

	def update
		super do |resource|
			UserMailer.changed_email(@user).deliver
		end
	end
end
