# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Logo.delete_all
Logo.create! uri: 'http://assets.purewhitesugar.se.s3.amazonaws.com/PWSlogo.jpeg'
