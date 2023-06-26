#!/usr/bin/env python

import pycurl
import StringIO

response = StringIO.StringIO()
c = pycurl.Curl()
c.setopt(c.URL, 'https://nixton.dev/nixtonbots/A/text/coins/ltcbots.txt')
c.setopt(c.WRITEFUNCTION, response.write)
c.setopt(c.HTTPHEADER, ['Content-Type: application/json','Accept-Charset: UTF-8'])
c.setopt(c.POSTFIELDS, '@request.json')
c.perform()
c.close()
print response.getvalue()
response.close()

print("We are NixtonBots.")

def update():
  print("Python Nixtonltc Script")

update()
