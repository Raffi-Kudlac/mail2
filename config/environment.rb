# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Mail2::Application.initialize!


config.action_mailer.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "www.heroku.com",
  :user_name            => "fakespam9989@gmail.com",
  :password             => "threshrules",
  :authentication       => :plain,
  :enable_starttls_auto => true
}

config.action_mailer.default_url_options = {
  :host => "www.heroku.com"
}