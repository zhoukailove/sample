# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secre_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    File.read(token_file).chomp
  else
    token = SecureRandom.hex(64)
    File.write(token_file,token)
    token
  end
end
SampleApp::Application.config.secret_key_base = '81a9c3a16fb8d88c451e731c4cb9c1feb9a8792e6558a1d1f92b6a87e84d370e1cccce46413b0e475441aa7f0fb1f7545ea4b35c9229ca39b5cbb0423bd42d9b'
#SampleApp::Application.config.secret_key_base = secure_token