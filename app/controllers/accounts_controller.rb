class AccountsController < ApplicationController
  def manage_users
    @hilite = "manage_users"
    @users = User.all
    render
  end
  def update
    @user = User.find(params[:user].id)
	@user.update_attributes!(params[:user])
    flash[:notice] = "success"
    redirect_to manage_users_page_path
  end
  def manage_account
    #@hilite = "alter_user"
    @user = User.find(params[:id])
    render
  end
end
