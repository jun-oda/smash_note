class PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_usernote, only: %i[ edit update ]

  def index
    @characters = Character.all
  end

  def new
    @usernote = UserNote.new
  end

  def edit
    @character = Character.find(params[:id])
  end

  def create
    @usernote = UserNote.new(usernote_params)
    if @usernote.save
      flash[:notice] = "編集が完了しました"
      redirect_to(edit_page_path(@character.id))
    else
      render(edit_page_path(@character.id))
    end
  end

  def update
    @character = Character.find(params[:id])
    if @usernote.update(usernote_params)
      flash[:notice] = "編集が完了しました"
      redirect_to(edit_page_path(@character.id))
    else
      render(edit_page_path(@character.id))
    end  
  end

  def delete
  end

  private
    def set_usernote
      @usernote = UserNote.find_by(character_id: params[:id])
    end

    def usernote_params
      params.require(:user_note).permit(:content1, :content2, :content3, :content4)
    end
end    
