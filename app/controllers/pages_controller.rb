class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def wir
  end

  def carta
  end

  def join
  end

  def testimonial
  end
end
