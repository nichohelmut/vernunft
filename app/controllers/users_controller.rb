class UsersController < ApplicationController
  skip_before_action :authenticate_user!
  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      raise
      redirect_to charta_path
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  private

  def user_params
    params.require(:user).permit(%i[first_name last_name email street zip city birth_date support])
  end

end
