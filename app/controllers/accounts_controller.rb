class AccountsController < ApplicationController
  def manage_users
    @hilite = "manage_users"
    @users = User.all
    render
  end
  def update
    @user = User.find(params[:id])
	tester = @user.update_attributes!(params[:user].permit(:bu_id, :pin, :first_name, :last_name, :email, :updated_at))
    if(tester)
      flash[:notice] = params[:access_level]
    else
      flash[:warning] = "Failure"
    end
    redirect_to manage_users_page_path
  end
  def manage_account
    #@hilite = "alter_user"
    @user = User.find(params[:id])
    render
  end
end
