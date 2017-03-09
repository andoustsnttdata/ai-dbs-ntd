# coding: utf-8
require "net/https"
require "json"


uri = URI.parse("http://localhost:3000/sfdc/push")
uri = URI.parse("http://ai-dbs-nttd.herokuapp.com/sfdc/push?h=Nttdata1")
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = false


datas = [
  {"id" => 1,
   "userid" => "usertestid",
   "usertime" => Time.now,
   "usermes" => "テストテスト",
   "usermesen" => "testtest",
   "ansno" => "testans",
   "feedbackdatetime" => Time.now,
   "feedbackjudge" => 1,
   "adminjudge" => 0,
   "created" => Time.now
  },
  {"id" => 2,
   "userid" => "usertestid2",
   "usertime" => Time.now,
   "usermes" => "テストテスト2",
   "usermesen" => "testtest2",
   "ansno" => "testans2",
   "feedbackdatetime" => Time.now,
   "feedbackjudge" => 1,
   "adminjudge" => 0,
   "created" => Time.now
  }
]

json_data = datas.to_json

req = Net::HTTP::Post.new(uri.path)
puts json_data
req.body = json_data

res = http.request(req)
puts res.body


