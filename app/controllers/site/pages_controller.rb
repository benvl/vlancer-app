class Site::PagesController < ApplicationController
  
  def index
  end

  def profile
  	@projects = Project.all.where(user_id = current_user.id.to_s)
  end
  
end
