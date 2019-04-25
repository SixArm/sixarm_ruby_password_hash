# SixArm.com »Ruby » <br> PasswordHash class to generate secure SHA256 passwords

* Doc: <http://sixarm.com/sixarm_ruby_password_hash/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_password_hash>
* Repo: <http://github.com/sixarm/sixarm_ruby_password_hash>
<!--header-shut-->


## Introduction

Password hash tool to create secure passwords,

This uses SHA256 hexdigest for the cryptographic hash,
and authenticates a password, salt, and hash.

For docs go to <http://sixarm.com/sixarm_ruby_password_hash/doc>

Want to help? We're happy to get pull requests.


<!--install-open-->

## Install

### Gem

To install this gem in your shell or terminal:

    gem install sixarm_ruby_password_hash

### Gemfile

To add this gem to your Gemfile:

    gem 'sixarm_ruby_password_hash'

### Require

To require the gem in your code:

    require 'sixarm_ruby_password_hash'

<!--install-shut-->


## Examples

To create a password:

    require "sixarm_ruby_password_hash"
    text = "mysecret"
    salt = "azsxdcfv"
    hash = PasswordHash.new(text,salt)

To create a password using our helpers:

    require "sixarm_ruby_password_hash"
    require "sixarm_ruby_password_salt"
    require "sixarm_ruby_password_text"
    text = PasswordText.new
    salt = PasswordSalt.new
    hash = PasswordHash.new(text,salt)

To verify a password:

    hash.valid?(text,salt)

To verify a password from a web form for a user:

    user = User.find(params[:id]) or raise "user not found"
    user.hash.valid?(params[:password],user.salt)
