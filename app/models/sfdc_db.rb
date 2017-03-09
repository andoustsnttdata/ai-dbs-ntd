class SfdcCase < ActiveRecord::Base
  self.table_name = 'salesforce.case'

  def set_datas(datas)
    ph = {"id" => "id",
          "userid" => "userid__c",
          "usertime" => "usertime__c",
          "usermes" => "usermes__c",
          "usermesen" => "usermesen__c",
          "ansno" => "ansno__c",
          "feedbackdatetime" => "feedbackdatetime__c",
          "feedbackjudge" => "feedbackjudge__c",
          "adminjudge" => "adminjudge__c",
          "created" => "createddate"
         }
    ph.each do |post,sfdc|
      if datas[post]
        self[sfdc] = datas[post]
      else
        return false
      end
    end
    return true
  end
  
end
