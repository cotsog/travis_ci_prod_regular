import os
import requests

mailgun_credentials = os.environ['MAILGUN_CREDENTIALS']

def send_simple_message():
    r = requests.post(
        "https://api.mailgun.net/v3/sandbox400a0020e1964c79bbf9202767651c72.mailgun.org/messages",
        auth=tuple(mailgun_credentials.split(':', 1)),
        data={"from": "Excited User <mailgun@sandbox400a0020e1964c79bbf9202767651c72.mailgun.org>",
              "to": ["cotsog@gmail.com"],
              "subject": "Hello",
              "text": "Testing some Mailgun awesomness!",
              "o:testmode": True})
    print r.status_code
              
send_simple_message()
