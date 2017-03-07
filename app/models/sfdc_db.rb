class SfdcDb
  include ActiveModel::Model

  attr_accessor :id, :userid, :usertime, :usermes, :usermesen, :ansno, :feedbackdatetime, :feedbackjudge, :adminjudge, :created
  
  def save
    args = ["insert into post(id,userid,usertime,usermes,usermesen,ansno,feedbackdatetime,feedbackjudge,adminjudge,created) values(?,?,?,?,?,?,?,?,?)",
            "Tom Brown", 1]
    sql = ActiveRecord::Base.send(:sanitize_sql_array, args)
    ActiveRecord::Base.connection.execute(sql)
  end
  
end
