# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start
require 'sixarm_ruby_password_hash'

describe PasswordHash do

  before do
    P ||= PasswordHash.new('foo','bar')
  end

  describe ".new" do

    it "=>  String" do
      P.must_be_kind_of String
    end

  end

  describe "#valid?" do

    it "right args => true" do
      assert(P.valid?('foo','bar'), "p.valid? foo bar")
    end

    it "wrong args => false" do
      refute(P.valid?('foo','xxx'), "p.valid? foo xxx")
      refute(P.valid?('xxx','bar'), "p.valid? xxx bar")
    end

  end

end

