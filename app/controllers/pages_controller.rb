class PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_usernote, only: %i[ edit update ]

  def index
    @characters = Character.all
  end

  def show
    
  end

  def new
    @usernote = UserNote.new
  end

  def create
  end

  def edit
    
  end

  def update
  end

  def delete
  end

  private
    def set_usernote
      @usernote = UserNote.find_by(character_id: params[:id])
    end

    def usernote_params
      params.require(:admin).permit(:name, :email)
    end
end    
