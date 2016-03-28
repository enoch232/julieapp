class NotesController < ApplicationController
	before_action :find_note, only: [ :destroy, :update, :edit]
  def index
  	@notes = Note.all
  end

  def new
  	@note = Note.new
  end

  def create
  	@note = Note.new(note_params)
  	if @note.save
  		redirect_to root_path
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  	if @note.update(note_params)
  		redirect_to root_path
  	else
  		render :edit
  	end
  end

  def destroy
  	@note.destroy
  	redirect_to root_path
  end


  private
  def find_note
  	@note = Note.find(params[:id])
  end

  def note_params
  	params.require(:note).permit( :oftype, :image, :name, :type, :location, :account, :title, :opportunity, :about, :bd)
  end
end
