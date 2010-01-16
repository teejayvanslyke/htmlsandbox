# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_htmlsandbox_session',
  :secret      => '1235bf94233d72abdd9648db8867579203b77f9957e8e744af6e3cef18d0b346c144b823dc095d16baa1f04e10e1db40dad8d3cf2d82d1bf738db5f24381342e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
