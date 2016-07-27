#!/usr/bin/expect --

puts "BEGIN!"
puts $::env(MAILGUN_CREDENTIALS)
set mailgun_credentials $::env(MAILGUN_CREDENTIALS)
puts "$mailgun_credentials"
