class DashboardsController < ApplicationController
  respond_to :html

  add_breadcrumb "Dashboard", :cloud_dashboards_path
  def index
   
  end

  def show    
    @id = params[:id]
    @user_id = current_user.id
    @dashboards = current_user.cloud_books 
    @count = @dashboards.length
  end 

end
