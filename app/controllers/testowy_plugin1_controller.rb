class TestowyPlugin1Controller < ApplicationController

  
  def index
    @project = Project.find(params[:project_id])
    allissues = @project.issues
    
    @issueslist = []
    i = 0
    allissues.each do |issue|
      userdata = User.where(:id => issue.id)
      userdata.each do |user|
        @mail = user.mail      
      end
      
      if issue.priority_id ==5
        priority = 'immediate'
      elsif issue.priority_id ==4
        priority = 'urgent'
      elsif issue.priority_id ==3
        priority = 'high'
      elsif issue.priority_id ==2
        priority = 'normal'
      elsif issue.priority_id ==1
        priority = 'low'
      end
      
      @issueslist[i] = {'id' => issue.id, 'subject' => issue.subject,  'mail'=> @mail, 'descript' => issue.description, 'priority'=> priority}  
      i += 1
    end
  end
  
end
