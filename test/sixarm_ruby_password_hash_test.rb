require 'test/unit'
require 'sixarm_ruby_password_hash'

class Testing < Test::Unit::TestCase

 def test_new
  p = PasswordHash.new('foo','bar')
  assert_not_nil(p,"p")
  assert(p.is_a?(String),"p is a string")
 end

 def test_valid
  p = PasswordHash.new('foo','bar')
  assert(p.valid?('foo','bar'), "p.valid? foo bar")
 end

 def test_invalid
  p = PasswordHash.new('foo','bar')
  assert(!p.valid?('foo','xxx'), "p.valid? foo xxx")
  assert(!p.valid?('xxx','bar'), "p.valid? xxx bar")
 end

end

