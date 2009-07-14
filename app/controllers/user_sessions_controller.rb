
class UserSessionsController < ApplicationController


  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = qt(:user_session, :created)
      self.smerf_user_id = current_user.id
      redirect_to root_path
    else
      render :action => :new
    end
  end

  def destroy
    user_session = UserSession.find
    user_session.destroy
    flash[:notice] = qt(:user_session, :destroyed)
    redirect_to root_path
  end
end