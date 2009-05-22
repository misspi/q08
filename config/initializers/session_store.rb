# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_q08_session',
  :secret      => 'b9ad63d8304ec6732c661a5d5f6e8d6339342ef8d50e365f5e2747c3ad555a6665535e62c4e51254f979473f2db4f3be37901260b1137dfac38d95a0e17dc635'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
