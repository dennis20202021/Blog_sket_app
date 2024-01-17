require "./config/initializers/stripe_account.rb"

class ApplicationMailer < ActionMailer::Base
  default from: StripeAccount.conf["sender_mail"]
  layout "mailer"
end
