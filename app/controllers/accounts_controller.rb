class AccountsController < ApplicationController
  def manage_users
    @hilite = "manage_users"
    @users = User.all
    render
  end
  def manage_account
    #@hilite = "alter_user"
    @user = User.find(params[:id])
    render
  end
end
