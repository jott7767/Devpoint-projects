class UsersController < ApplicationController
  def index
  end

  def user_card
    @user = params[:user]
    render(partial: 'user_card')
  end
end
