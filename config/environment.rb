# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Mail2::Application.initialize!


ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "www.heroku.com",
  :user_name            => "fakespam9989@gmail.com",
  :password             => "threshrules",
  :authentication       => :plain,
  :enable_starttls_auto => true
}
