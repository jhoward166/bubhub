class UserController < ApplicationController
  def create

    flash[:notice] = "thank you"
    redirect_to index_page_path

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

