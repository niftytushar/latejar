class TeamsController < ApplicationController

  layout false

  before_action :confirm_logged_in
  
  def index
      @team = User.where(:team_id => 1)
      @late_by=19
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end
