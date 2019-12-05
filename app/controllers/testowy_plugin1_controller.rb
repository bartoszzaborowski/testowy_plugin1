class TestowyPlugin1Controller < ApplicationController

  
  def index
    @project = Project.find(params[:project_id])
    @allissues = @project.issues
  end
end
