class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
    @user = user
    @greeting = "Hi " + user.name
    mail to: user.email, subject: "F@M Account Activation"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @user = user
    @greeting = "Hi " + user.name
    mail to: user.email, subject: "F@M Password Reset"
  end

  def new_user(user)
    @user = user
    mail to: "crystalk@famsocial.me", subject: "New F@M User"
  end
end
