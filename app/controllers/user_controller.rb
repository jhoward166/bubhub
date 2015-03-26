class UserController < ApplicationController
  def create
   if not (params[:user][:firstName].present? and params[:user][:lastName].present? and
      params[:user][:bMail].present? and params[:user][:BNumber].present? and
      params[:user][:pin].present? and params[:user][:phoneNumber].present? and
      params[:user][:BUCardNumber].present?)
        flash[:error]= "Please fill in all required fields."
        redirect_to register_page_path and return
  else
      flash[:notice] = "thank you, #{params[:user][:firstName]}"
      redirect_to index_page_path and return
  end

  end

  def read
  end

  def update
  end

  def delete
  end

  def register
    render "register"
  end
end

