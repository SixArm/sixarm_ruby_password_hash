=begin rdoc

= SixArm Ruby Gem: Password Hash to do secure SHA256 passwords.

Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
Copyright:: Copyright (c) 2006-2010 Joel Parker Henderson
License:: CreativeCommons License, Non-commercial Share Alike
License:: LGPL, GNU Lesser General Public License

Password hash tool to create secure passwords,

This uses SHA256 hexdigest for the cryptographic hash,
and authenticates a password, salt, and hash.

To create a password:
  require 'sixarm_ruby_password_hash'
  text = 'mysecret'
  salt = 'azsxdcfv'
  hash = PasswordHash.new(text,salt)

To create a password using our helpers:
  require 'sixarm_ruby_password_hash'
  require 'sixarm_ruby_password_salt'
  require 'sixarm_ruby_password_text'
  text = PasswordText.new
  salt = PasswordSalt.new
  hash = PasswordHash.new(text,salt)

To verify a password:
  hash.valid?(text,salt)

To verify a password from a web form for a user:
  user = User.find(params[:id]) or raise 'user not found'
  user.hash.valid?(params[:password],user.salt)

=end

require 'digest/sha2'

class PasswordHash < String

 def initialize(text,salt)
  text or raise "text:#{text}"
  salt or raise "salt:#{salt}"
  super(Digest::SHA256.hexdigest(text+salt))
 end

 def valid?(text,salt)
  self == Digest::SHA256.hexdigest(text+salt)
 end

end