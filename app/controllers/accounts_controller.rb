class AccountsController < ApplicationController
  def manage_users
    @hilite = "manage_users"
    @users = User.all
    render
  end
end
