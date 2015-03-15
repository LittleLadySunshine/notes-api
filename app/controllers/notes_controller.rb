class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    @note = Note.new(notes_param)
    @note.save
    render json: @note
  end

  def show
  end

  def update
    @note = Note.new(notes_param)
    @note.update
    return_data
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    head :no_content
  end

private

  def notes_param
    params.require(:note).permit(:title, :body)
  end

  def return_data
    @notes = Note.all
    render json: @note
  end


end
