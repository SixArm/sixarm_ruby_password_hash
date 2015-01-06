# SixArm.com » Ruby » <br> PasswordHash class to generate secure SHA256 passwords

* Doc: <http://sixarm.com/sixarm_ruby_password_hash/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_password_hash>
* Repo: <http://github.com/sixarm/sixarm_ruby_password_hash>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

Password hash tool to create secure passwords,

This uses SHA256 hexdigest for the cryptographic hash,
and authenticates a password, salt, and hash.

For docs go to <http://sixarm.com/sixarm_ruby_password_hash/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_password_hash

Bundler:

    gem "sixarm_ruby_password_hash", "~>1.3.0"

Require:

    require "sixarm_ruby_password_hash"


## Install with security (optional)

To enable high security	for all	our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_password_hash --trust-policy HighSecurity


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


## Changes

* 2012-03-16 1.3.0 Upgrade for Ruby 1.9.3, minitest/spec, and improved docs.


## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2015 Joel Parker Henderson
