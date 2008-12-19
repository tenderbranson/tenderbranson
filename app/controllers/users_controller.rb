class UsersController < ApplicationController
  def index
    @users = User.find(:all, :limit => 10)
    render :text => "#{User.count} users:<br>#{@users.inspect} ..."
  end

  def create
    @user = User.create(:name => params[:name], :email => params[:email])
    redirect_to :action => :index
  end
end
