require "action_mailer"

# set which directory ActionMailer should use
ActionMailer::Base.view_paths = File.dirname(__FILE__)

# ActionMailer configuration
ActionMailer::Base.smtp_settings = {
  address:    "smtp.gmail.com",
  port:       "587",
  user_name:  "tanjimmy1129@gmail.com",
  password:   "alomeman1",
  authentication: :plain
}

class Newsletter < ActionMailer::Base
  default from: "from@example.com"
  def welcome(recipient)
    mail(to: recipient, subject: 'Thanks for restocking')
  end
end
