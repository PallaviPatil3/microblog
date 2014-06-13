class UserMailer < ActionMailer::Base
  default from: "me@sandbox41c03e29af9846499f462b787cd21ca5.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to Twitter')
  end

  def changed_email(user)
    @user = user
    @url  = 'http://localhost:3000/users/sign_in'
    mail(to: @user.email, subject: 'Account edit successful!')
  end
end
