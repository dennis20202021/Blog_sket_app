require "./config/initializers/stripe_account.rb"

class CommentsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comments_mailer.submitted.subject
  #
  def submitted(comment)
    @comment = comment

    mail to: StripeAccount.conf["recipient_mail"], subject: "Your post received a new comment!"
  end
end
