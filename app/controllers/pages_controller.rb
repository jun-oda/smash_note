class PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_usernote, only: %i[ edit update ]

  def index
    @characters = Character.all
  end

  def new
    @character = Character.find(params[:character_id])
    @usernote = UserNote.new
  end

  def edit
    @character = Character.find(params[:id])
  end

  def create
    @usernote = UserNote.new(usernote_params)
    
    if @usernote.save
      flash[:notice] = "編集が完了しました"
      redirect_to(pages_path)
    else
      render(new_page_path)
    end
  end

  def update
    if @usernote.update(usernote_params)
      flash[:notice] = "編集が完了しました"
      redirect_to(pages_path)
    else
      render(edit_page_path)
    end  
  end

  private
    def set_usernote
      @usernote = UserNote.find_by(character_id: params[:id], user_id: current_user)
    end

    def usernote_params
      params.require(:user_note)
      .permit(:character_id, :content1, :content2, :content3, :content4)
      .merge(user_id: current_user.id)
    end
end    
