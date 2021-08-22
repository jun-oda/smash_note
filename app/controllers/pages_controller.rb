class PagesController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
  end

  def edit_note
    @user = current_user
    @user.user_id
  end
end
