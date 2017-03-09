# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sql = "create table sfdc_cases(  id int , userid__c varchar(20),  usertime__c datetime, usermes__c text, usermesen__c text, ansno__c varchar(255), feedbackdatetime__c datetime, feedbackjudge__c int, adminjudge__c int, createddate datetime);"

ActiveRecord::Base.connection.execute(sql)
