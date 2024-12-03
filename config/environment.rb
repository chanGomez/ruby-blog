# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# -----
Rails.application.configure do
  # Allow requests from your Render domain
  config.hosts << "ruby-blog-8yit.onrender.com"
end
