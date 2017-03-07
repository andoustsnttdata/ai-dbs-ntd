# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sql = "create table post( id int primary key, userid varchar(20), usertime datetime, usermes text, ansno varchar(255), feedbackdatetime datetime, feedbackjudge int, adminjudge int, created datetime);"
ActiveRecord::Base.connection.execute(sql)
