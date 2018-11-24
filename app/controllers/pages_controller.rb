class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def wir
  end

  def charta
    @user = User.new
    @user = User.create(user_params)
    @user.save
  end

  def join
  end

  def testimonial
  end

  private

  def user_params
    params.require(:user).permit(%i[first_name last_name email street zip city birth_date support])
  end
end
