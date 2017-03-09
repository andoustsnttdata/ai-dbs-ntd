class SfdcController < ApplicationController
  def push
    # parameter check and redirect
    redirect_flg = false
    ps = ["id","userid","usertime","usermes","usermesen","ansno",
          "feedbackdatetime","feedbackjudge","adminjudge","created"]
    ps.each do |p|
      unless params[p]
        redirect_flg = true
        redirect_to action: "index"
      end
    end
    unless params["h"] == "Nttdata1"
      redirect_to action: "index"
      redirect_flg = true
    end

    if redirect_flg
      render :text => "{info: {status: false}}"
    else
      render :text => "{info: {status: true}}"
    end
  end

  def index
    render :text => "test"
    SfdcCase.set_datas()
    
  end
end
