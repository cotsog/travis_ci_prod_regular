#!/usr/bin/expect --

puts "BEGIN!"
puts "$MAILGUN_CREDENTIALS"
set mailgun_credentials $MAILGUN_CREDENTIALS
puts "$mailgun_credentials"
