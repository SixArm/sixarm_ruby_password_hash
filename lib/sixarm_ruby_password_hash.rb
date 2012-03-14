# -*- coding: utf-8 -*-
=begin rdoc
Please see README
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
