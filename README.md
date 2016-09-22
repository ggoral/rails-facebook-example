# README

This is a simple test app written in Ruby on Rails 5, demonstrating the omniauth-facebook gem, with a session controller for session management and a User model.

##Usage
Make sure you have Ruby at least 2.2.2, and Rails 5 . Download the repo, run the bundle command, and migrate the database with ``` rails db:migrate ```. The run ``` rails s ``` to run the server, and try to authenticate via facebook.

Attention! You need to register a new app in https://developers.facebook.com, and import the ID and Secret Key of your app as environment variables in your system. You can also use the figaro gem if you like.
