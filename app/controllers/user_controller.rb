class UserController < ApplicationController
  def create

    if (params[:user_firstName].blank? or params[:user_lastName].blank? or
      params[:user_bMail].blank? or params[:user_BNumber].blank? or
      params[:user_pin].blank? or params[:user_phoneNumber].blank? or
      params[:user_BUCardNumber].blank?)
      flash[:error]= "Please fill in all required fields."
      redirect_to register_page_path and return
    else
      flash[:notice] = "thank you"
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

