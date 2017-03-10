# coding: utf-8
class SfdcController < ApplicationController
  def push
    # parameter check and redirect
    result_flg = false
    if params["h"] == "Nttdata1"
      result_flg = true
    end

    # main progress 
    if result_flg
      body = request.body.read
      json_request = JSON.parse(body)
      #p "test",json_request
      json_request.each do |j|
        sc = SfdcCase.new
        sc.set_datas(j)
        sc.save
      end
    end

    # render progress
    result_hash = {"info" => {"status" => result_flg}}
    render :plain => result_hash.to_json
  end

  def index
    datas = {"id" => Random.new.rand(100000),
             "userid" => "testid",
             "usertime" => Time.now,
             "usermes" => "テストテスト",
             "usermesen" => "test test",
             "ansno" => "100",
             "feedbackdatetime" => Time.now,
             "feedbackjudge" => "1",
             "adminjudge" => "0",
             "created" => Time.now
            }
    

    sc = SfdcCase.new
   result = sc.set_datas(datas)

    render :text => result.to_s
  end
end
